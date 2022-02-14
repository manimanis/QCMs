<div id="enonce-qcm" class="d-none" data-id="1" data-titre="Structures itératives" data-classe="2TI"
  data-description="QCM Structures itératives">
  <div class="question">
    <div class="enonce">
      <p><strong>Qu'affiche le programme suivant (le "/" indique un retour à la ligne)</strong></p>
      <pre><code class="python">for k in range(3):
    print(k)</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">0 / 1 / 2</div>
      <div class="proposition">0 / 3 / 6</div>
      <div class="proposition">1 / 2 / 3</div>
      <div class="proposition">0 / 1 / 2 / 3</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Qu'affiche le programme suivant (le "/" indique un retour à la ligne)</strong></p>
      <pre><code class="python">for k in range(1, 7, 2):
    print(k)</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">1 / 3 / 5</div>
      <div class="proposition">1 / 3 / 5 / 7</div>
      <div class="proposition">1 / 2 / 3 / 4 / 5 / 6</div>
      <div class="proposition">1 / 2 / 3 / 4 / 5 / 6 / 1 / 2 / 3 / 4 / 5 / 6</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Qu'affiche le programme suivant (le "/" indique un retour à la ligne)</strong></p>
      <pre><code class="python">for k in range(1, -8, -2):
    print(k)</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">-1 / -3 / -5 / -7</div>
      <div class="proposition">-1 / -3 / -5 / -7 / -8</div>
      <div class="proposition">1 / -1 / -3 / -5 / -7</div>
      <div class="proposition">1 / -1 / -3 / -5 / -7 / -9</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Qu'affiche le programme suivant (le "/" indique un retour à la ligne)</strong></p>
      <pre><code class="python">ch = "ab cd"
for k in range(len(ch)):
    print(k)</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">ab / cd</div>
      <div class="proposition">ab cd</div>
      <div class="proposition">a / b / / c / d</div>
      <div class="proposition">a / b / c / d</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Soit t un tableau qui contient les éléments : 1, 4, 3, 8, 2</strong></p>
      <p><strong>On exécute le programme suivant :</strong></p>
      <pre><code class="python">s = 0
for i in range(5):
    s += t[i]</code></pre>
      <p><strong>Quelle est la valeur de <code>s</code> à la fin de l'exécution ?</strong></p>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">1</div>
      <div class="proposition">18</div>
      <div class="proposition">8</div>
      <div class="proposition">36</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Soit t un tableau qui contient les éléments : 1, 2, 3, 4, 1, 2, 3, 4, 0, 2</strong></p>
      <p><strong>On exécute le programme suivant :</strong></p>
      <pre><code class="python">c = 0
for i in range(10):
    if t[i] == t[1]:
        c += 1</code></pre>
      <p><strong>Quelle est la valeur de <code>c</code> à la fin de l'exécution ?</strong></p>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">0</div>
      <div class="proposition">2</div>
      <div class="proposition">3</div>
      <div class="proposition">10</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>
      <pre><code class="python">a = 1
while a &lt;= 14:
    a = a + 4</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">1</div>
      <div class="proposition">14</div>
      <div class="proposition">15</div>
      <div class="proposition">17</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Que contient la variable <code>a</code> sachant que :</strong></p>
      <pre><code class="python">a = 5
while a > 13:
    a = a + 3</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">1</div>
      <div class="proposition">5</div>
      <div class="proposition">13</div>
      <div class="proposition">15</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Que contient la variable <code>s</code> sachant que :</strong></p>
      <pre><code class="python">s = 0
n = 6
while n >= 0:
    s = s + n
    n = n - 1</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">0</div>
      <div class="proposition">6</div>
      <div class="proposition">15</div>
      <div class="proposition">21</div>
    </div>
  </div>
  <div class="question">
    <div class="enonce">
      <p><strong>Quelle est la valeur du couple <code>(s, i)</code> à la fin de l'exécution du programme
          suivant :</strong></p>
      <pre><code class="python">s = 0
i = 1
while i &lt; 5:
    s = s + i
    i = i + 1</code></pre>
    </div>
    <div class="propositions" data-issingle="true">
      <div class="proposition">(4, 5)</div>
      <div class="proposition">(10, 4)</div>
      <div class="proposition">(10, 5)</div>
      <div class="proposition">(15, 5)</div>
    </div>
  </div>
</div>