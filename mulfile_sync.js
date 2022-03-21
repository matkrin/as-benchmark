const fs = require("fs");

class Mul {
  constructor(mulfile) {
    this.data = this.readMul(mulfile);
  }

  readMul(file) {
    const MUL_BLOCK = 128;
    const buffer = fs.readFileSync(file);

    let nr = buffer.readInt16LE();
    let adr = buffer.readInt32LE(2);

    let pos;
    let blockCounter = 0;

    if (adr === 3) {
      pos = MUL_BLOCK * adr - 2;
      blockCounter += adr;
    } else {
      pos = -2;
    }

    let images = [];

    while (blockCounter * MUL_BLOCK < buffer.length) {
      let imgNum = buffer.readInt16LE((pos += 2));
      let size = buffer.readInt16LE((pos += 2));
      let xres = buffer.readInt16LE((pos += 2));
      let yres = buffer.readInt16LE((pos += 2));
      let zres = buffer.readInt16LE((pos += 2));

      let year = buffer.readInt16LE((pos += 2));
      let month = buffer.readInt16LE((pos += 2));
      let day = buffer.readInt16LE((pos += 2));
      let hour = buffer.readInt16LE((pos += 2));
      let minute = buffer.readInt16LE((pos += 2));
      let second = buffer.readInt16LE((pos += 2));

      let xsize = buffer.readInt16LE((pos += 2));
      let ysize = buffer.readInt16LE((pos += 2));
      let xoffset = buffer.readInt16LE((pos += 2));
      let yoffset = buffer.readInt16LE((pos += 2));
      let zscale = buffer.readInt16LE((pos += 2));
      let tilt = buffer.readInt16LE((pos += 2));

      let speed = buffer.readInt16LE((pos += 2));
      let bias = buffer.readInt16LE((pos += 2));
      let current = buffer.readInt16LE((pos += 2));

      let sample = buffer.toString("utf8", (pos += 1), (pos += 20));
      let title = buffer.toString("utf8", (pos += 1), (pos += 20));

      let postpr = buffer.readInt16LE((pos += 2));
      let postd1 = buffer.readInt16LE((pos += 2));
      let mode = buffer.readInt16LE((pos += 2));
      let currfac = buffer.readInt16LE((pos += 2));
      let numPointscans = buffer.readInt16LE((pos += 2));
      let unitnr = buffer.readInt16LE((pos += 2));
      let version = buffer.readInt16LE((pos += 2));

      let spare48 = buffer.readInt16LE((pos += 2));
      let spare49 = buffer.readInt16LE((pos += 2));
      let spare50 = buffer.readInt16LE((pos += 2));
      let spare51 = buffer.readInt16LE((pos += 2));
      let spare52 = buffer.readInt16LE((pos += 2));
      let spare53 = buffer.readInt16LE((pos += 2));
      let spare54 = buffer.readInt16LE((pos += 2));
      let spare55 = buffer.readInt16LE((pos += 2));
      let spare56 = buffer.readInt16LE((pos += 2));
      let spare57 = buffer.readInt16LE((pos += 2));
      let spare58 = buffer.readInt16LE((pos += 2));
      let spare59 = buffer.readInt16LE((pos += 2));

      let gain = buffer.readInt16LE((pos += 2));

      let spare61 = buffer.readInt16LE((pos += 2));
      let spare62 = buffer.readInt16LE((pos += 2));
      let spare63 = buffer.readInt16LE((pos += 2));

      let imgData = []
      for(let i = 0; i < yres; i++) {
          let line = []
          for(let j = 0; j < xres; j++) {
              let dataPoint = buffer.readInt16LE(pos += 2); // * -0.01/1.36 * zscale/2000;
              line.push(dataPoint);
          }
          imgData.push(line);
      }
    //   let imgData = new Uint16Array(buffer, pos += 2, xres * yres);
    //   pos += xres * yres * 2 - 2;

      if (numPointscans > 0) {
        for (let i = 0; i < num_pointscans; i++) {
          let psSize = buffer.readInt16LE((pos += 2));
          let psType = buffer.readInt16LE((pos += 2));
          let psTime4scan = buffer.readInt16LE((pos += 2));
          let psMinv = buffer.readInt16LE((pos += 2));
          let psMaxv = buffer.readInt16LE((pos += 2));
          let psXpos = buffer.readInt16LE((pos += 2));
          let psYpos = buffer.readInt16LE((pos += 2));
          let psDz = buffer.readInt16LE((pos += 2));
          let psDelay = buffer.readInt16LE((pos += 2));
          let psVersion = buffer.readInt16LE((pos += 2));
          let psIndenDelay = buffer.readInt16LE((pos += 2));
          let psXposEnd = buffer.readInt16LE((pos += 2));
          let psYposEnd = buffer.readInt16LE((pos += 2));
          let psVtFw = buffer.readInt16LE((pos += 2));
          let psItFw = buffer.readInt16LE((pos += 2));
          let psVtBw = buffer.readInt16LE((pos += 2));
          let psItBw = buffer.readInt16LE((pos += 2));
          let psLScan = buffer.readInt16LE((pos += 2));

          pos += 92;
          psData = [];
          for (let j = 0; j < ps_size * 2; j += 2) {
            psData.push(buffer.readInt16BE((pos += 2)));
          }
        }
      }

      blockCounter += size;

      speed *= 0.01; // in seconds
      let lineTime = speed / yres; // in seconds
      bias = -bias / 3.2768;
      current *= currfac * 0.01;

      images.push({
        imgNum: imgNum,
        size: size,
        xres: xres,
        yres: yres,
        zres: zres,
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        size: size,
        xsize: xsize,
        ysize: ysize,
        xoffset: xoffset,
        yoffset: yoffset,
        zscale: zscale,
        tilt: tilt,
        speed: speed,
        lineTime: lineTime,
        bias: bias,
        current: current,
        sample: sample,
        title: title,
        postpr: postpr,
        postd1: postd1,
        mode: mode,
        currfac: currfac,
        numPointscans: numPointscans,
        unitnr: unitnr,
        version: version,
        gain: gain,
        imgData: imgData,
      });
    }
    return images;
  }
}

module.exports= Mul;