console.clear();

new Vue({
  el: '#js-ohgiri',

  mounted() {
    for (let i = 0; i < 200; i++) {
      const baseX = gsap.utils.random(0, 100);
      const snow = this.$refs['snow' + i];
      gsap.set(snow, {
        x: baseX + 'vw',
        y: -10,
        opacity: gsap.utils.random(0, 1),
        scale: gsap.utils.random(0, 1) });


      gsap.to(snow, {
        duration: gsap.utils.random(10, 30),
        y: '100vh',
        delay: gsap.utils.random(0, -30),
        repeat: -1,
        ease: 'none' });


      gsap.to(snow, {
        duration: gsap.utils.random(5, 15),
        x: baseX + gsap.utils.random(-10, 10) + 'vw',
        yoyo: true,
        repeat: -1,
        delay: gsap.utils.random(-20, -10),
        ease: 'power1.inOut' });

    }
  } });