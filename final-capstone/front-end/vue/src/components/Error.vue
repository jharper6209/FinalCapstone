<template>
<div id="uh-oh">
<h2 id="header">Uh-oh! If the recipe doesn't work you will see this as your error page.</h2>
<iframe id="video" width="560" height="315" src="https://www.youtube.com/embed/2Q_ZzBGPdqE?&autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
</template>

<script>
export default {

}
</script>

<style>
#uh-oh{
    display: flex;
    height: 100vh;
    width: 100vw;
    align-content: center;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}

#header{
    color: white;
  font-family: 'Open Sans', sans-serif;
  font-size: 1.7em
}
</style>