
<h2 class="sr-only">Système clé en main pour la signature d'un contrat de franchise DIAG YSY — guide étape par étape</h2>

<style>
:root {
  --blue-50: #E6F1FB; --blue-200: #85B7EB; --blue-600: #185FA5; --blue-800: #0C447C;
  --teal-50: #E1F5EE; --teal-200: #5DCAA5; --teal-600: #0F6E56; --teal-800: #085041;
  --amber-50: #FAEEDA; --amber-200: #EF9F27; --amber-600: #854F0B; --amber-800: #633806;
  --green-50: #EAF3DE; --green-600: #3B6D11; --green-800: #27500A;
  --red-50: #FCEBEB; --red-600: #A32D2D; --red-800: #791F1F;
  --gray-100: #D3D1C7;
}
* { box-sizing: border-box; }
body, div, span, p { margin: 0; padding: 0; }
.wrap { padding: 1.5rem 0; }
.header { display: flex; align-items: center; gap: 12px; margin-bottom: 1.5rem; border-bottom: 0.5px solid var(--color-border-tertiary); padding-bottom: 1rem; }
.header-badge { background: var(--blue-600); color: #fff; font-size: 11px; font-weight: 500; padding: 3px 10px; border-radius: var(--border-radius-md); letter-spacing: 0.05em; }
.header-title { font-size: 17px; font-weight: 500; color: var(--color-text-primary); }
.header-sub { font-size: 13px; color: var(--color-text-secondary); margin-top: 2px; }

.phase-nav { display: flex; gap: 6px; margin-bottom: 1.5rem; flex-wrap: wrap; }
.phase-btn { background: transparent; border: 0.5px solid var(--color-border-secondary); border-radius: var(--border-radius-md); padding: 5px 12px; font-size: 12px; font-weight: 500; cursor: pointer; color: var(--color-text-secondary); transition: all 0.15s; white-space: nowrap; }
.phase-btn:hover { background: var(--color-background-secondary); color: var(--color-text-primary); }
.phase-btn.active { background: var(--blue-50); color: var(--blue-800); border-color: var(--blue-200); }

.phase-panel { display: none; }
.phase-panel.visible { display: block; }

.phase-title { font-size: 15px; font-weight: 500; color: var(--color-text-primary); margin-bottom: 0.25rem; }
.phase-desc { font-size: 13px; color: var(--color-text-secondary); margin-bottom: 1rem; line-height: 1.6; }

.steps-list { display: flex; flex-direction: column; gap: 10px; }
.step-card { background: var(--color-background-primary); border: 0.5px solid var(--color-border-tertiary); border-radius: var(--border-radius-lg); padding: 14px 16px; display: flex; gap: 14px; align-items: flex-start; cursor: pointer; transition: border-color 0.15s; }
.step-card:hover { border-color: var(--color-border-secondary); }
.step-card.done { border-left: 2px solid var(--teal-200); }
.step-card.warn { border-left: 2px solid var(--amber-200); }
.step-card.block { border-left: 2px solid var(--red-600); }

.step-num { width: 28px; height: 28px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 12px; font-weight: 500; flex-shrink: 0; background: var(--blue-50); color: var(--blue-800); }
.step-card.done .step-num { background: var(--teal-50); color: var(--teal-800); }
.step-card.warn .step-num { background: var(--amber-50); color: var(--amber-800); }
.step-card.block .step-num { background: var(--red-50); color: var(--red-800); }

.step-body { flex: 1; }
.step-title { font-size: 14px; font-weight: 500; color: var(--color-text-primary); margin-bottom: 3px; }
.step-detail { font-size: 12px; color: var(--color-text-secondary); line-height: 1.6; }
.step-chips { display: flex; flex-wrap: wrap; gap: 5px; margin-top: 7px; }
.chip { font-size: 11px; padding: 2px 8px; border-radius: 20px; font-weight: 500; }
.chip-blue { background: var(--blue-50); color: var(--blue-800); }
.chip-teal { background: var(--teal-50); color: var(--teal-800); }
.chip-amber { background: var(--amber-50); color: var(--amber-800); }
.chip-red { background: var(--red-50); color: var(--red-800); }
.chip-green { background: var(--green-50); color: var(--green-800); }

.checklist { display: flex; flex-direction: column; gap: 6px; margin-top: 8px; }
.cl-item { display: flex; align-items: flex-start; gap: 10px; font-size: 12px; color: var(--color-text-secondary); }
.cl-box { width: 15px; height: 15px; border: 0.5px solid var(--color-border-secondary); border-radius: 3px; flex-shrink: 0; margin-top: 1px; cursor: pointer; display: flex; align-items: center; justify-content: center; background: var(--color-background-primary); }
.cl-box.checked { background: var(--teal-50); border-color: var(--teal-200); }
.cl-box.checked::after { content: "✓"; font-size: 9px; color: var(--teal-600); }
.cl-item.checked-item > span { text-decoration: line-through; color: var(--color-text-tertiary); }

.note-box { margin-top: 1rem; background: var(--color-background-secondary); border: 0.5px solid var(--color-border-tertiary); border-radius: var(--border-radius-md); padding: 10px 14px; }
.note-label { font-size: 11px; font-weight: 500; color: var(--color-text-secondary); margin-bottom: 4px; }
.note-text { font-size: 12px; color: var(--color-text-secondary); line-height: 1.65; }

.timeline-bar { display: flex; gap: 0; margin-bottom: 1.25rem; border-radius: var(--border-radius-md); overflow: hidden; border: 0.5px solid var(--color-border-tertiary); }
.tl-seg { flex: 1; padding: 6px 8px; text-align: center; }
.tl-seg.t0 { background: var(--blue-50); }
.tl-seg.t1 { background: var(--teal-50); }
.tl-seg.t2 { background: var(--amber-50); }
.tl-seg.t3 { background: var(--green-50); }
.tl-label { font-size: 10px; font-weight: 500; }
.tl-seg.t0 .tl-label { color: var(--blue-800); }
.tl-seg.t1 .tl-label { color: var(--teal-800); }
.tl-seg.t2 .tl-label { color: var(--amber-800); }
.tl-seg.t3 .tl-label { color: var(--green-800); }
.tl-days { font-size: 9px; color: var(--color-text-tertiary); }

.doc-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(160px, 1fr)); gap: 8px; margin-top: 0.75rem; }
.doc-card { background: var(--color-background-primary); border: 0.5px solid var(--color-border-tertiary); border-radius: var(--border-radius-md); padding: 10px 12px; }
.doc-icon { font-size: 16px; margin-bottom: 5px; }
.doc-name { font-size: 12px; font-weight: 500; color: var(--color-text-primary); line-height: 1.4; }
.doc-who { font-size: 11px; color: var(--color-text-secondary); margin-top: 3px; }

.montant-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; margin-top: 0.75rem; }
.m-card { background: var(--color-background-secondary); border-radius: var(--border-radius-md); padding: 10px 14px; }
.m-label { font-size: 11px; color: var(--color-text-secondary); margin-bottom: 3px; }
.m-val { font-size: 18px; font-weight: 500; color: var(--color-text-primary); }
.m-sub { font-size: 11px; color: var(--color-text-secondary); margin-top: 2px; }

.ask-btn { margin-top: 1rem; background: transparent; border: 0.5px solid var(--color-border-secondary); border-radius: var(--border-radius-md); padding: 7px 14px; font-size: 13px; color: var(--color-text-secondary); cursor: pointer; display: inline-flex; align-items: center; gap: 6px; }
.ask-btn:hover { background: var(--color-background-secondary); color: var(--color-text-primary); }
</style>

<div class="wrap">
  <div class="header">
    <div>
      <div style="display:flex;align-items:center;gap:8px;margin-bottom:3px;">
        <span class="header-badge">DIAG YSY</span>
        <span class="header-badge" style="background:var(--teal-600)">Franchise</span>
      </div>
      <div class="header-title">Système de signature — contrat de franchise</div>
      <div class="header-sub">Parcours complet franchiseur → franchisé, de la prospection à la signature</div>
    </div>
  </div>

  <div class="timeline-bar">
    <div class="tl-seg t0"><div class="tl-label">Phase 1</div><div class="tl-days">J−60 → J−21</div></div>
    <div class="tl-seg t1"><div class="tl-label">Phase 2</div><div class="tl-days">J−20 (DIP)</div></div>
    <div class="tl-seg t2"><div class="tl-label">Phase 3</div><div class="tl-days">J−20 → J0</div></div>
    <div class="tl-seg t3"><div class="tl-label">Phase 4</div><div class="tl-days">Signature J0</div></div>
  </div>

  <div class="phase-nav">
    <button class="phase-btn active" onclick="showPhase(0)">1 · Qualification</button>
    <button class="phase-btn" onclick="showPhase(1)">2 · Remise DIP</button>
    <button class="phase-btn" onclick="showPhase(2)">3 · Préparation</button>
    <button class="phase-btn" onclick="showPhase(3)">4 · Signature J0</button>
    <button class="phase-btn" onclick="showPhase(4)">Documents requis</button>
    <button class="phase-btn" onclick="showPhase(5)">Financier</button>
  </div>

  <!-- PHASE 1 -->
  <div class="phase-panel visible" id="phase-0">
    <div class="phase-title">Phase 1 — Qualification du candidat</div>
    <div class="phase-desc">Avant toute remise de document, s'assurer que le candidat est sérieux, compétent et aligné avec les valeurs DIAG YSY. Durée : de J−60 à J−21.</div>
    <div class="steps-list">
      <div class="step-card">
        <div class="step-num">1</div>
        <div class="step-body">
          <div class="step-title">Premier contact et découverte</div>
          <div class="step-detail">Appel de qualification : motivations, parcours, certifications détenues, secteur géographique visé, capacité financière (6 500 € HT droit d'entrée + investissement initial).</div>
          <div class="step-chips"><span class="chip chip-blue">Téléphone / visio</span><span class="chip chip-blue">30–45 min</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Certifications diagnostiqueur vérifiées (ou plan de certification)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Zone géographique souhaitée disponible</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Capacité financière confirmée</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Pas d'appartenance à un réseau concurrent</span></div>
          </div>
        </div>
      </div>
      <div class="step-card">
        <div class="step-num">2</div>
        <div class="step-body">
          <div class="step-title">Réunion d'information approfondie</div>
          <div class="step-detail">Présenter la franchise DIAG YSY : le concept, la méthode PMR, les avantages (centrale d'achat, Liciel, publicité clé en main), la tarification (royalties TMI inversé), les obligations de chaque partie.</div>
          <div class="step-chips"><span class="chip chip-blue">Présentiel ou visio</span><span class="chip chip-blue">1h30–2h</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Présentation de la franchise remise (Présentation Détaillée + Franchise DIAG YSY)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Tableau des royalties expliqué et compris</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Zone exclusive discutée et pré-validée</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Questions du candidat traitées</span></div>
          </div>
        </div>
      </div>
      <div class="step-card">
        <div class="step-num">3</div>
        <div class="step-body">
          <div class="step-title">Visite terrain / rencontre franchiseur</div>
          <div class="step-detail">Rencontre physique avec Youssef N'AIT DRISS et/ou Yann TACUSSEL. Visite des locaux YSY SOLUTIONS à Saint-Siméon-de-Bressieux si possible. Validation mutuelle de l'adéquation.</div>
          <div class="step-chips"><span class="chip chip-teal">Présentiel fortement conseillé</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Adéquation humaine et valeurs validées</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Compte rendu de réunion rédigé</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Accord de principe des deux parties</span></div>
          </div>
        </div>
      </div>
    </div>
    <div class="note-box">
      <div class="note-label">Point légal important</div>
      <div class="note-text">Aucun paiement ni engagement contractuel ne doit intervenir avant le délai de réflexion de 20 jours suivant la remise du DIP (art. L. 330-3 du Code de commerce). Cette phase de qualification est donc exclusivement informative.</div>
    </div>
    <button class="ask-btn" onclick="sendPrompt('Quels sont les critères de sélection d\'un bon candidat franchisé DIAG YSY ?')">Critères de sélection d'un franchisé ↗</button>
  </div>

  <!-- PHASE 2 -->
  <div class="phase-panel" id="phase-1">
    <div class="phase-title">Phase 2 — Remise officielle du DIP</div>
    <div class="phase-desc">Acte juridique obligatoire. Le DIP doit être remis au moins 20 jours avant la signature du contrat et avant tout paiement. C'est le point de départ du délai légal.</div>
    <div class="steps-list">
      <div class="step-card warn">
        <div class="step-num">4</div>
        <div class="step-body">
          <div class="step-title">Personnalisation du DIP pour le candidat</div>
          <div class="step-detail">Adapter le Document d'Information Précontractuel : compléter le nom du candidat, la zone géographique exclusive attribuée, les comptes prévisionnels personnalisés (joint en annexe).</div>
          <div class="step-chips"><span class="chip chip-amber">Document obligatoire</span><span class="chip chip-amber">Art. L.330-3 Code de commerce</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Nom du candidat complété (ex : Jérôme VERSOLATO)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Zone exclusive définie et annexée</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Comptes prévisionnels du candidat en annexe</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>3 derniers bilans DIAG YSY joints (2022, 2023, 2024)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Marque FR 4858823 en annexe</span></div>
          </div>
        </div>
      </div>
      <div class="step-card warn">
        <div class="step-num">5</div>
        <div class="step-body">
          <div class="step-title">Remise du DIP + projet de contrat — date à consigner</div>
          <div class="step-detail">Remettre en main propre ou par LRAR : le DIP complet + le projet de contrat de franchise. Faire signer la déclaration du candidat figurant à la fin du DIP. Conserver la preuve de remise (date précise = J−20 minimum).</div>
          <div class="step-chips"><span class="chip chip-amber">LRAR recommandée</span><span class="chip chip-amber">Date = point de départ des 20 jours</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>DIP signé par le candidat (déclaration finale)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Projet de contrat remis conjointement</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Date de remise archivée (LRAR ou accusé de réception)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Rappel au candidat : engagement de confidentialité + restitution si non-suite</span></div>
          </div>
        </div>
      </div>
    </div>
    <div class="note-box">
      <div class="note-label">Délai légal incompressible</div>
      <div class="note-text">La signature du contrat et tout paiement (droit d'entrée de 6 500 € HT) sont INTERDITS avant l'expiration d'un délai de 20 jours calendaires à compter de la remise du DIP. Toute violation entraîne la nullité du contrat.</div>
    </div>
  </div>

  <!-- PHASE 3 -->
  <div class="phase-panel" id="phase-2">
    <div class="phase-title">Phase 3 — Préparation de la signature (J−20 → J0)</div>
    <div class="phase-desc">Période de réflexion du candidat. Parallèlement, franchiseur et franchisé préparent tous les éléments administratifs et contractuels pour un J0 sans accroc.</div>
    <div class="steps-list">
      <div class="step-card">
        <div class="step-num">6</div>
        <div class="step-body">
          <div class="step-title">Collecte des pièces du franchisé</div>
          <div class="step-detail">Le franchisé doit fournir ses pièces justificatives avant la signature (art. 5-3 du contrat). Les rassembler et vérifier leur conformité.</div>
          <div class="step-chips"><span class="chip chip-blue">Personne physique</span><span class="chip chip-blue">Personne morale</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>CNI / passeport recto-verso en cours de validité</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Justificatif de domicile &lt; 3 mois (si personne physique)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Extrait KBIS &lt; 1 mois (si personne morale existante)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Statuts de la société (si applicable)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Preuve de la capacité financière (relevé bancaire, plan de financement)</span></div>
          </div>
        </div>
      </div>
      <div class="step-card">
        <div class="step-num">7</div>
        <div class="step-body">
          <div class="step-title">Finalisation et personnalisation du contrat</div>
          <div class="step-detail">Compléter toutes les zones laissées en blanc dans le Contrat de Franchise : identité du franchisé, zone exclusive précise, dates de début et fin (durée 5 ans), adresse du fonds, RCS, date de remise du DIP, date de paiement du droit d'entrée.</div>
          <div class="step-chips"><span class="chip chip-blue">Tous les champs [CAPITALES] à compléter</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Identité complète du franchisé (art. préambule)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Adresse du fonds et RCS (art. 1)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Zone géographique exclusive précise (art. 2)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Date de remise du DIP (art. 1-2)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Date de début et fin du contrat (art. 7)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Date et quittance du paiement du droit d'entrée (art. 4-1)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Spécimens de signature et paraphe franchisé</span></div>
          </div>
        </div>
      </div>
      <div class="step-card">
        <div class="step-num">8</div>
        <div class="step-body">
          <div class="step-title">Relecture juridique et validation finale</div>
          <div class="step-detail">Faire relire le contrat finalisé par l'avocat partenaire DIAG YSY (accessible via la centrale d'achat). S'assurer que toutes les clauses correspondent à la situation réelle du franchisé.</div>
          <div class="step-chips"><span class="chip chip-teal">Fortement recommandé</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Validation par l'avocat partenaire</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Contrat transmis au franchisé pour relecture finale</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Éventuelles questions du franchisé traitées</span></div>
          </div>
        </div>
      </div>
    </div>
    <button class="ask-btn" onclick="sendPrompt('Quels sont les champs à compléter dans le contrat de franchise DIAG YSY avant la signature ?')">Tous les champs à compléter dans le contrat ↗</button>
  </div>

  <!-- PHASE 4 -->
  <div class="phase-panel" id="phase-3">
    <div class="phase-title">Phase 4 — Signature du contrat (J0)</div>
    <div class="phase-desc">Jour de la signature officielle. Toutes les pièces sont en ordre, le délai des 20 jours est écoulé, le droit d'entrée peut être réglé.</div>
    <div class="steps-list">
      <div class="step-card done">
        <div class="step-num">9</div>
        <div class="step-body">
          <div class="step-title">Vérification finale avant signature</div>
          <div class="step-detail">Checklist de contrôle de dernière minute avant de signer.</div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>21 jours calendaires minimum écoulés depuis remise du DIP</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Toutes les pièces justificatives du franchisé reçues et archivées</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Contrat imprimé en 2 exemplaires originaux (1 par partie)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Virement du droit d'entrée 6 500 € HT confirmé (ou prévu ce jour)</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Coordonnées bancaires franchiseur communiquées (Caisse d'Epargne / CIC)</span></div>
          </div>
        </div>
      </div>
      <div class="step-card done">
        <div class="step-num">10</div>
        <div class="step-body">
          <div class="step-title">Signature et paraphe de chaque page</div>
          <div class="step-detail">Les deux parties signent et paraphent chaque page du contrat. Remplir les cases "spécimen de signature" et "spécimen de paraphe" en page de garde.</div>
          <div class="step-chips"><span class="chip chip-teal">2 originaux signés</span><span class="chip chip-teal">Chaque page paraphée</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Page de garde : spécimen signature franchiseur + franchisé</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Toutes les pages paraphées par les deux parties</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Dernière page : signature + date + lieu</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>1 exemplaire remis au franchisé, 1 conservé par le franchiseur</span></div>
          </div>
        </div>
      </div>
      <div class="step-card done">
        <div class="step-num">11</div>
        <div class="step-body">
          <div class="step-title">Paiement du droit d'entrée et quittance</div>
          <div class="step-detail">Le franchisé règle le droit d'entrée de 6 500 € HT + TVA par virement bancaire. Le franchiseur délivre quittance (art. 4-1 du contrat).</div>
          <div class="step-chips"><span class="chip chip-teal">6 500 € HT</span><span class="chip chip-teal">+ TVA 20% = 7 800 € TTC</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Virement effectué ou confirmé</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Quittance émise et remise au franchisé</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Facture de droit d'entrée archivée</span></div>
          </div>
        </div>
      </div>
      <div class="step-card done">
        <div class="step-num">12</div>
        <div class="step-body">
          <div class="step-title">Remise du pack de démarrage</div>
          <div class="step-detail">Remettre au franchisé l'ensemble des outils de démarrage prévus par le contrat et la franchise.</div>
          <div class="step-chips"><span class="chip chip-teal">Pack bienvenue</span></div>
          <div class="checklist">
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Accès Liciel paramétré + anti-virus</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Adresse email @diagysy.com créée</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Manuel opératoire remis</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Planning de la formation initiale (2 jours) calé</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Contacts équipe support communiqués</span></div>
            <div class="cl-item"><div class="cl-box" onclick="toggleCheck(this)"></div><span>Goodies / cartes de visite commandés</span></div>
          </div>
        </div>
      </div>
    </div>
    <button class="ask-btn" onclick="sendPrompt('Que se passe-t-il après la signature du contrat de franchise DIAG YSY ? Quelles sont les premières actions à mener ?')">Actions post-signature ↗</button>
  </div>

  <!-- DOCUMENTS -->
  <div class="phase-panel" id="phase-4">
    <div class="phase-title">Documents requis — récapitulatif</div>
    <div class="phase-desc">Tableau de bord de tous les documents nécessaires au processus de signature, par émetteur.</div>
    <div class="doc-grid">
      <div class="doc-card">
        <div class="doc-icon">📄</div>
        <div class="doc-name">DIP (Document d'Info Précontractuel)</div>
        <div class="doc-who">Franchiseur → Franchisé · J−20 min.</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">📋</div>
        <div class="doc-name">Projet de contrat de franchise</div>
        <div class="doc-who">Franchiseur → Franchisé · J−20 min.</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">📊</div>
        <div class="doc-name">Comptes prévisionnels personnalisés</div>
        <div class="doc-who">Franchiseur · Annexe DIP</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">📑</div>
        <div class="doc-name">3 derniers bilans DIAG YSY</div>
        <div class="doc-who">Franchiseur · Annexe DIP (2022-2024)</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">🗺️</div>
        <div class="doc-name">Zone exclusive — carte & description</div>
        <div class="doc-who">Franchiseur · Annexe contrat</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">🪪</div>
        <div class="doc-name">CNI / Passeport (recto-verso)</div>
        <div class="doc-who">Franchisé → Franchiseur · avant J0</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">🏠</div>
        <div class="doc-name">Justificatif de domicile &lt; 3 mois</div>
        <div class="doc-who">Franchisé (pers. physique) · avant J0</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">🏢</div>
        <div class="doc-name">Extrait KBIS &lt; 1 mois</div>
        <div class="doc-who">Franchisé (pers. morale) · avant J0</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">✍️</div>
        <div class="doc-name">Contrat signé (2 originaux)</div>
        <div class="doc-who">Les deux parties · J0</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">🧾</div>
        <div class="doc-name">Quittance droit d'entrée</div>
        <div class="doc-who">Franchiseur → Franchisé · J0</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">📘</div>
        <div class="doc-name">Manuel opératoire</div>
        <div class="doc-who">Franchiseur → Franchisé · J0</div>
      </div>
      <div class="doc-card">
        <div class="doc-icon">🔐</div>
        <div class="doc-name">Accès Liciel + ERP</div>
        <div class="doc-who">Franchiseur → Franchisé · J0 ou J+1</div>
      </div>
    </div>
    <button class="ask-btn" onclick="sendPrompt('Peux-tu me générer une lettre de remise du DIP pour DIAG YSY à envoyer au candidat franchisé ?')">Générer la lettre de remise du DIP ↗</button>
  </div>

  <!-- FINANCIER -->
  <div class="phase-panel" id="phase-5">
    <div class="phase-title">Volet financier — synthèse</div>
    <div class="phase-desc">Récapitulatif des montants, des modalités de paiement et du barème des royalties à valider avec le franchisé lors de la signature.</div>
    <div class="montant-grid">
      <div class="m-card">
        <div class="m-label">Droit d'entrée</div>
        <div class="m-val">6 500 €</div>
        <div class="m-sub">HT · paiement unique à J0 · + TVA 20%</div>
      </div>
      <div class="m-card">
        <div class="m-label">Royalties plancher</div>
        <div class="m-val">275 €/mois</div>
        <div class="m-sub">HT · jusqu'à 5 000 € de CA mensuel</div>
      </div>
      <div class="m-card">
        <div class="m-label">Exigibilité royalties</div>
        <div class="m-val">10 du mois</div>
        <div class="m-sub">Transmission CA avant le 5 de chaque mois</div>
      </div>
      <div class="m-card">
        <div class="m-label">Option location matériel</div>
        <div class="m-val">195 €/mois</div>
        <div class="m-sub">HT · optionnel · réduit l'apport initial</div>
      </div>
    </div>
    <div class="note-box" style="margin-top:1rem;">
      <div class="note-label">Barème royalties TMI inversé (art. 4-2)</div>
      <div class="note-text">0–5 000 € CA : 275 €/mois · 5 001–10 000 € : 5% · 10 001–15 000 € : 4,5% · 15 001–30 000 € : 4% · 30 001–50 000 € : 2,5% · 50 001 € et + : 1,5%</div>
    </div>
    <div class="note-box" style="margin-top:0.75rem;">
      <div class="note-label">Pénalités de retard (art. 4-4)</div>
      <div class="note-text">Retard de paiement : 10% du montant TTC + indemnité forfaitaire de 40 € pour frais de recouvrement + clause pénale de 10% de la facture impayée.</div>
    </div>
    <button class="ask-btn" onclick="sendPrompt('Peux-tu simuler les royalties mensuelles DIAG YSY pour un franchisé avec un CA mensuel de 8 000 €, 15 000 € et 30 000 € ?')">Simuler les royalties ↗</button>
  </div>
</div>

<script>
function showPhase(n) {
  document.querySelectorAll('.phase-panel').forEach((p,i) => {
    p.classList.toggle('visible', i === n);
  });
  document.querySelectorAll('.phase-btn').forEach((b,i) => {
    b.classList.toggle('active', i === n);
  });
}
function toggleCheck(box) {
  box.classList.toggle('checked');
  const item = box.closest('.cl-item');
  if (box.classList.contains('checked')) {
    item.classList.add('checked-item');
  } else {
    item.classList.remove('checked-item');
  }
}
</script>
