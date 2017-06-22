$(document).ready(function(){
  var carregando = $('#carregando')
  var conteudoAjax = $('#conteudo-ajax')

  function mostrarCarregando(){
    carregando.css('display', 'block').fadeIn(1000);
  };

  function aposCarregamento(){
    carregando.fadeOut(1000);
    conteudoAjax.slideDown();
 $('.fechar').click(function() {
  conteudoAjax.slideUp('slow');
 });
};

  $(conteudoAjax).css('opacity', .94);

  $('#ajax a').click(function(event){
    event.preventDefault();
    mostrarCarregando();
 switch(this.id){
  case 'm1':
   conteudoAjax.slideUp();
   conteudoAjax.load('arquivo-html.html #tx2000br', aposCarregamento);
  break;
  case 'm2':
   conteudoAjax.slideUp();
   conteudoAjax.load('arquivo-html.html #dv3000br', aposCarregamento);
  break;
  case 'm3':
   conteudoAjax.slideUp();
   conteudoAjax.load('arquivo-html.html #dv4', aposCarregamento);
  break;
  default:
   aposCarregamento();
   break;
  }
  });
})
