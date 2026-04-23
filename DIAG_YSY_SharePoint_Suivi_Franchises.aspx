<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DIAG YSY — Suivi Franchisés</title>
<link href="https://fonts.googleapis.com/css2?family=Segoe+UI:wght@400;500;600&display=swap" rel="stylesheet">
<style>
  :root {
    --sp-blue: #0078d4;
    --sp-blue-dark: #005a9e;
    --sp-blue-light: #deecf9;
    --sp-blue-mid: #106ebe;
    --sp-nav-bg: #f3f2f1;
    --sp-nav-hover: #edebe9;
    --sp-nav-active: #e1dfdd;
    --sp-border: #edebe9;
    --sp-text: #323130;
    --sp-text2: #605e5c;
    --sp-text3: #a19f9d;
    --sp-white: #ffffff;
    --sp-header: #0078d4;
    --sp-success: #107c10;
    --sp-success-bg: #dff6dd;
    --sp-warn: #c19c00;
    --sp-warn-bg: #fff4ce;
    --sp-danger: #a4262c;
    --sp-danger-bg: #fde7e9;
    --sp-gray-bg: #f8f7f6;
    --sp-teal: #038387;
    --sp-teal-bg: #e0f3f4;
    --font: 'Segoe UI', system-ui, sans-serif;
  }

  * { box-sizing: border-box; margin: 0; padding: 0; }
  body { font-family: var(--font); background: var(--sp-gray-bg); color: var(--sp-text); font-size: 14px; }

  /* TOP BAR */
  .sp-topbar {
    background: var(--sp-header);
    height: 48px;
    display: flex;
    align-items: center;
    padding: 0 16px;
    gap: 16px;
    position: sticky;
    top: 0;
    z-index: 100;
  }
  .sp-topbar-logo {
    display: flex; align-items: center; gap: 8px;
    color: white; font-weight: 600; font-size: 15px; text-decoration: none;
  }
  .sp-topbar-logo svg { width: 20px; height: 20px; }
  .sp-topbar-site { color: rgba(255,255,255,0.85); font-size: 13px; border-left: 1px solid rgba(255,255,255,0.3); padding-left: 12px; }
  .sp-topbar-actions { margin-left: auto; display: flex; gap: 8px; }
  .sp-topbar-btn {
    background: rgba(255,255,255,0.15); border: none; color: white;
    padding: 5px 12px; border-radius: 3px; font-size: 12px; cursor: pointer;
    font-family: var(--font); font-weight: 500;
  }
  .sp-topbar-btn:hover { background: rgba(255,255,255,0.25); }
  .sp-topbar-user {
    width: 32px; height: 32px; border-radius: 50%;
    background: #c7e0f4; display: flex; align-items: center; justify-content: center;
    font-weight: 600; font-size: 12px; color: var(--sp-blue-dark); cursor: pointer;
  }

  /* SUITE NAV */
  .sp-suite-nav {
    background: var(--sp-white);
    border-bottom: 1px solid var(--sp-border);
    padding: 0 16px;
    display: flex;
    align-items: center;
    gap: 4px;
    height: 44px;
  }
  .sp-suite-tab {
    padding: 10px 14px; font-size: 13px; font-weight: 500; color: var(--sp-text2);
    border-bottom: 2px solid transparent; cursor: pointer; white-space: nowrap;
    transition: color 0.12s;
  }
  .sp-suite-tab:hover { color: var(--sp-text); }
  .sp-suite-tab.active { color: var(--sp-blue); border-bottom-color: var(--sp-blue); }

  /* LAYOUT */
  .sp-layout { display: flex; min-height: calc(100vh - 92px); }

  /* LEFT NAV */
  .sp-leftnav {
    width: 200px; min-width: 200px; background: var(--sp-white);
    border-right: 1px solid var(--sp-border);
    padding: 12px 0;
  }
  .sp-nav-section { padding: 4px 12px 2px; font-size: 11px; font-weight: 600; color: var(--sp-text3); text-transform: uppercase; letter-spacing: 0.06em; margin-top: 8px; }
  .sp-nav-item {
    display: flex; align-items: center; gap: 8px;
    padding: 7px 16px; font-size: 13px; color: var(--sp-text2);
    cursor: pointer; border-radius: 0; transition: background 0.1s;
    border-left: 3px solid transparent;
  }
  .sp-nav-item:hover { background: var(--sp-nav-hover); color: var(--sp-text); }
  .sp-nav-item.active { background: var(--sp-nav-active); color: var(--sp-blue-dark); font-weight: 600; border-left-color: var(--sp-blue); }
  .sp-nav-item svg { width: 16px; height: 16px; flex-shrink: 0; }
  .sp-nav-badge { margin-left: auto; background: var(--sp-blue); color: white; border-radius: 10px; padding: 1px 6px; font-size: 10px; font-weight: 600; }

  /* MAIN CONTENT */
  .sp-main { flex: 1; overflow: auto; }

  /* PAGE HEADER */
  .sp-page-header {
    background: var(--sp-white);
    border-bottom: 1px solid var(--sp-border);
    padding: 20px 28px 16px;
  }
  .sp-breadcrumb { font-size: 12px; color: var(--sp-text3); margin-bottom: 6px; }
  .sp-breadcrumb a { color: var(--sp-blue); text-decoration: none; }
  .sp-breadcrumb a:hover { text-decoration: underline; }
  .sp-page-title { font-size: 24px; font-weight: 600; color: var(--sp-text); margin-bottom: 4px; }
  .sp-page-sub { font-size: 13px; color: var(--sp-text2); }
  .sp-page-actions { display: flex; gap: 8px; margin-top: 14px; flex-wrap: wrap; }
  .sp-btn {
    display: inline-flex; align-items: center; gap: 6px;
    padding: 6px 14px; border-radius: 3px; font-size: 13px; font-weight: 500;
    cursor: pointer; font-family: var(--font); border: 1px solid transparent;
    transition: background 0.1s;
  }
  .sp-btn-primary { background: var(--sp-blue); color: white; }
  .sp-btn-primary:hover { background: var(--sp-blue-mid); }
  .sp-btn-secondary { background: white; color: var(--sp-blue); border-color: var(--sp-blue); }
  .sp-btn-secondary:hover { background: var(--sp-blue-light); }
  .sp-btn-ghost { background: transparent; color: var(--sp-text2); border-color: var(--sp-border); }
  .sp-btn-ghost:hover { background: var(--sp-nav-hover); color: var(--sp-text); }

  /* CONTENT AREA */
  .sp-content { padding: 20px 28px; }

  /* KPI CARDS */
  .sp-kpi-row { display: grid; grid-template-columns: repeat(auto-fit, minmax(140px, 1fr)); gap: 12px; margin-bottom: 20px; }
  .sp-kpi {
    background: var(--sp-white); border: 1px solid var(--sp-border);
    border-radius: 4px; padding: 14px 16px;
  }
  .sp-kpi-label { font-size: 12px; color: var(--sp-text2); margin-bottom: 6px; }
  .sp-kpi-val { font-size: 28px; font-weight: 600; color: var(--sp-text); line-height: 1; }
  .sp-kpi-sub { font-size: 11px; color: var(--sp-text3); margin-top: 4px; }
  .sp-kpi-accent { border-top: 3px solid var(--sp-blue); }
  .sp-kpi-accent-green { border-top: 3px solid var(--sp-success); }
  .sp-kpi-accent-warn { border-top: 3px solid var(--sp-warn); }
  .sp-kpi-accent-teal { border-top: 3px solid var(--sp-teal); }

  /* SECTION TITLE */
  .sp-section-title {
    font-size: 16px; font-weight: 600; color: var(--sp-text);
    margin-bottom: 10px; margin-top: 20px;
    padding-bottom: 8px; border-bottom: 1px solid var(--sp-border);
    display: flex; align-items: center; gap: 8px;
  }
  .sp-section-title:first-child { margin-top: 0; }

  /* TABLE */
  .sp-table-wrap { background: var(--sp-white); border: 1px solid var(--sp-border); border-radius: 4px; overflow: hidden; margin-bottom: 20px; }
  .sp-table { width: 100%; border-collapse: collapse; font-size: 13px; }
  .sp-table thead tr { background: var(--sp-nav-bg); border-bottom: 1px solid var(--sp-border); }
  .sp-table thead th { padding: 9px 14px; text-align: left; font-weight: 600; color: var(--sp-text2); font-size: 12px; white-space: nowrap; }
  .sp-table tbody tr { border-bottom: 1px solid var(--sp-border); transition: background 0.1s; }
  .sp-table tbody tr:last-child { border-bottom: none; }
  .sp-table tbody tr:hover { background: #faf9f8; }
  .sp-table td { padding: 9px 14px; color: var(--sp-text); vertical-align: middle; }
  .sp-table td.name { font-weight: 500; }
  .sp-table .link { color: var(--sp-blue); cursor: pointer; text-decoration: none; }
  .sp-table .link:hover { text-decoration: underline; }

  /* STATUS BADGES */
  .badge {
    display: inline-flex; align-items: center; gap: 4px;
    padding: 2px 8px; border-radius: 2px; font-size: 11px; font-weight: 600;
    white-space: nowrap;
  }
  .badge-blue { background: var(--sp-blue-light); color: var(--sp-blue-dark); }
  .badge-green { background: var(--sp-success-bg); color: var(--sp-success); }
  .badge-warn { background: var(--sp-warn-bg); color: var(--sp-warn); }
  .badge-danger { background: var(--sp-danger-bg); color: var(--sp-danger); }
  .badge-teal { background: var(--sp-teal-bg); color: var(--sp-teal); }
  .badge-gray { background: var(--sp-nav-active); color: var(--sp-text2); }
  .badge-dot { width: 6px; height: 6px; border-radius: 50%; background: currentColor; }

  /* PHASE PIPELINE */
  .pipeline { display: flex; gap: 0; margin-bottom: 20px; border-radius: 4px; overflow: hidden; border: 1px solid var(--sp-border); }
  .pipe-seg {
    flex: 1; padding: 12px 10px; text-align: center;
    border-right: 1px solid var(--sp-border); background: var(--sp-white);
    cursor: pointer; transition: background 0.1s;
  }
  .pipe-seg:last-child { border-right: none; }
  .pipe-seg:hover { background: var(--sp-nav-hover); }
  .pipe-seg.active-pipe { background: var(--sp-blue-light); }
  .pipe-label { font-size: 11px; font-weight: 600; color: var(--sp-text2); }
  .pipe-seg.active-pipe .pipe-label { color: var(--sp-blue-dark); }
  .pipe-count { font-size: 22px; font-weight: 600; color: var(--sp-text); margin: 2px 0; }
  .pipe-seg.active-pipe .pipe-count { color: var(--sp-blue); }
  .pipe-sub { font-size: 10px; color: var(--sp-text3); }

  /* DETAIL PANEL */
  .sp-two-col { display: grid; grid-template-columns: 1fr 320px; gap: 16px; }
  .sp-card { background: var(--sp-white); border: 1px solid var(--sp-border); border-radius: 4px; padding: 16px; margin-bottom: 14px; }
  .sp-card-title { font-size: 14px; font-weight: 600; color: var(--sp-text); margin-bottom: 12px; display: flex; align-items: center; gap: 8px; }

  /* CHECKLIST */
  .checklist { display: flex; flex-direction: column; gap: 5px; }
  .cl-item { display: flex; align-items: flex-start; gap: 8px; padding: 5px 6px; border-radius: 3px; cursor: pointer; transition: background 0.1s; }
  .cl-item:hover { background: var(--sp-nav-hover); }
  .cl-check {
    width: 16px; height: 16px; border: 1.5px solid #8a8886; border-radius: 2px;
    flex-shrink: 0; margin-top: 1px; display: flex; align-items: center; justify-content: center;
    background: white; transition: all 0.12s;
  }
  .cl-check.done { background: var(--sp-blue); border-color: var(--sp-blue); }
  .cl-check.done::after { content: ''; display: block; width: 9px; height: 5px; border-left: 2px solid white; border-bottom: 2px solid white; transform: rotate(-45deg) translate(1px, -1px); }
  .cl-text { font-size: 12px; color: var(--sp-text); line-height: 1.4; }
  .cl-item.checked .cl-text { text-decoration: line-through; color: var(--sp-text3); }
  .cl-phase-header { font-size: 11px; font-weight: 600; color: var(--sp-text2); padding: 6px 6px 2px; text-transform: uppercase; letter-spacing: 0.04em; margin-top: 4px; }

  /* PROGRESS BAR */
  .progress-wrap { margin-bottom: 8px; }
  .progress-label { display: flex; justify-content: space-between; font-size: 11px; color: var(--sp-text2); margin-bottom: 3px; }
  .progress-bar { height: 6px; background: var(--sp-nav-active); border-radius: 3px; overflow: hidden; }
  .progress-fill { height: 100%; background: var(--sp-blue); border-radius: 3px; transition: width 0.3s; }
  .progress-fill.green { background: var(--sp-success); }

  /* TIMELINE */
  .timeline { display: flex; flex-direction: column; gap: 0; }
  .tl-item { display: flex; gap: 12px; padding: 0 0 14px 0; }
  .tl-left { display: flex; flex-direction: column; align-items: center; width: 20px; flex-shrink: 0; }
  .tl-dot { width: 12px; height: 12px; border-radius: 50%; border: 2px solid var(--sp-border); background: white; flex-shrink: 0; }
  .tl-dot.done { background: var(--sp-success); border-color: var(--sp-success); }
  .tl-dot.active { background: var(--sp-blue); border-color: var(--sp-blue); }
  .tl-dot.pending { background: white; border-color: #c8c6c4; }
  .tl-line { flex: 1; width: 2px; background: var(--sp-border); margin: 2px 0; }
  .tl-body { padding-top: 0; }
  .tl-title { font-size: 12px; font-weight: 600; color: var(--sp-text); }
  .tl-date { font-size: 11px; color: var(--sp-text3); margin-top: 1px; }
  .tl-note { font-size: 11px; color: var(--sp-text2); margin-top: 2px; }

  /* FORM FIELDS */
  .sp-field-row { display: grid; grid-template-columns: 1fr 1fr; gap: 10px; margin-bottom: 10px; }
  .sp-field { display: flex; flex-direction: column; gap: 3px; }
  .sp-field label { font-size: 11px; font-weight: 600; color: var(--sp-text2); }
  .sp-field input, .sp-field select {
    border: 1px solid #c8c6c4; border-radius: 2px; padding: 5px 8px;
    font-size: 13px; font-family: var(--font); color: var(--sp-text);
    outline: none; background: white;
  }
  .sp-field input:focus, .sp-field select:focus { border-color: var(--sp-blue); box-shadow: 0 0 0 1px var(--sp-blue); }

  /* ROYALTIES TABLE */
  .royalties-bar { display: flex; height: 8px; border-radius: 4px; overflow: hidden; margin: 8px 0; }
  .r-seg { height: 100%; }

  /* ALERT */
  .sp-alert {
    border-radius: 3px; padding: 10px 14px; font-size: 12px;
    display: flex; gap: 8px; align-items: flex-start; margin-bottom: 12px;
  }
  .sp-alert-warn { background: var(--sp-warn-bg); border-left: 3px solid var(--sp-warn); color: #4a3800; }
  .sp-alert-info { background: var(--sp-blue-light); border-left: 3px solid var(--sp-blue); color: var(--sp-blue-dark); }
  .sp-alert-success { background: var(--sp-success-bg); border-left: 3px solid var(--sp-success); color: #0b5c0b; }

  /* PAGE VISIBILITY */
  .sp-page { display: none; }
  .sp-page.visible { display: block; }

  /* SEARCH BAR */
  .sp-searchbar {
    display: flex; align-items: center; gap: 8px;
    background: white; border: 1px solid var(--sp-border);
    border-radius: 3px; padding: 5px 10px; margin-bottom: 14px;
  }
  .sp-searchbar input { border: none; outline: none; font-size: 13px; font-family: var(--font); color: var(--sp-text); flex: 1; }
  .sp-searchbar svg { width: 14px; height: 14px; color: var(--sp-text3); flex-shrink: 0; }

  .filter-row { display: flex; gap: 8px; margin-bottom: 14px; flex-wrap: wrap; align-items: center; }
  .filter-chip {
    padding: 4px 10px; border-radius: 12px; font-size: 11px; font-weight: 500;
    cursor: pointer; border: 1px solid var(--sp-border); background: white; color: var(--sp-text2);
  }
  .filter-chip.active { background: var(--sp-blue); color: white; border-color: var(--sp-blue); }
  .filter-chip:hover:not(.active) { background: var(--sp-nav-hover); }

  .avatar { width: 28px; height: 28px; border-radius: 50%; display: inline-flex; align-items: center; justify-content: center; font-size: 11px; font-weight: 600; flex-shrink: 0; }

  @media print {
    .sp-topbar, .sp-suite-nav, .sp-leftnav, .sp-page-actions { display: none; }
    .sp-layout { display: block; }
    .sp-main { overflow: visible; }
  }
</style>
</head>
<body>

<!-- TOP BAR -->
<div class="sp-topbar">
  <a class="sp-topbar-logo" href="#">
    <svg viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2"><rect x="3" y="3" width="8" height="8" rx="1"/><rect x="13" y="3" width="8" height="8" rx="1"/><rect x="3" y="13" width="8" height="8" rx="1"/><rect x="13" y="13" width="8" height="8" rx="1"/></svg>
    Microsoft SharePoint
  </a>
  <span class="sp-topbar-site">YSY Solutions</span>
  <div class="sp-topbar-actions">
    <button class="sp-topbar-btn" onclick="window.print()">Imprimer</button>
    <div class="sp-topbar-user">YN</div>
  </div>
</div>

<!-- SUITE NAV -->
<div class="sp-suite-nav">
  <div class="sp-suite-tab active" onclick="setTab(0,this)">Tableau de bord</div>
  <div class="sp-suite-tab" onclick="setTab(1,this)">Dossiers franchisés</div>
  <div class="sp-suite-tab" onclick="setTab(2,this)">Processus signature</div>
  <div class="sp-suite-tab" onclick="setTab(3,this)">Financier</div>
  <div class="sp-suite-tab" onclick="setTab(4,this)">Documents</div>
</div>

<!-- LAYOUT -->
<div class="sp-layout">

  <!-- LEFT NAV -->
  <nav class="sp-leftnav">
    <div class="sp-nav-section">Navigation</div>
    <div class="sp-nav-item active" onclick="showPage('dashboard'); setNav(this)">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M1 1h6v6H1zm8 0h6v6H9zM1 9h6v6H1zm8 0h6v6H9z"/></svg>
      Tableau de bord
    </div>
    <div class="sp-nav-item" onclick="showPage('dossiers'); setNav(this)">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M1.75 1A.75.75 0 001 1.75v12.5c0 .414.336.75.75.75h12.5a.75.75 0 00.75-.75V5.5a.75.75 0 00-.22-.53l-3.78-3.75A.75.75 0 0010.5 1zm7.5 1.5L12.5 5H9.25zM2.5 2.5h5.25V5.75c0 .414.336.75.75.75H13v8H2.5z"/></svg>
      Dossiers
      <span class="sp-nav-badge">3</span>
    </div>
    <div class="sp-nav-item" onclick="showPage('process'); setNav(this)">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zM2.5 8a5.5 5.5 0 1111 0 5.5 5.5 0 01-11 0zm5-3.25v3.5l2.5 1.5-.75 1.25-3.25-2V4.75h1.5z"/></svg>
      Processus
    </div>
    <div class="sp-nav-item" onclick="showPage('financier'); setNav(this)">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zM2.5 8a5.5 5.5 0 1111 0 5.5 5.5 0 01-11 0zm4-2.5h3a.5.5 0 010 1h-2v1h2a1.5 1.5 0 010 3H9v.5a.5.5 0 01-1 0V11H6.5a.5.5 0 010-1H9V9H7a1.5 1.5 0 010-3h.5V5.5a.5.5 0 011 0V6z"/></svg>
      Financier
    </div>
    <div class="sp-nav-section">Ressources</div>
    <div class="sp-nav-item" onclick="showPage('docs'); setNav(this)">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M4 1a1 1 0 00-1 1v12a1 1 0 001 1h8a1 1 0 001-1V5.5L9.5 1H4zm4.5 1.5L11 5H8.5V2.5zM5 7h6v1H5V7zm0 2h6v1H5V9zm0 2h4v1H5v-1z"/></svg>
      Documents
    </div>
    <div class="sp-nav-item" onclick="showPage('contacts'); setNav(this)">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M8 8a3 3 0 100-6 3 3 0 000 6zm-5 5.5a5 5 0 0110 0H3z"/></svg>
      Contacts
    </div>
    <div class="sp-nav-section">Réseau</div>
    <div class="sp-nav-item">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zM2.5 8a5.5 5.5 0 1111 0 5.5 5.5 0 01-11 0z"/></svg>
      Franchisés actifs
    </div>
    <div class="sp-nav-item">
      <svg viewBox="0 0 16 16" fill="currentColor"><path d="M2 3.5A1.5 1.5 0 013.5 2h9A1.5 1.5 0 0114 3.5v9a1.5 1.5 0 01-1.5 1.5h-9A1.5 1.5 0 012 12.5v-9zm1.5 0v9h9v-9h-9zM5 8h6v1H5V8z"/></svg>
      Conventions réseau
    </div>
  </nav>

  <!-- MAIN -->
  <main class="sp-main">

    <!-- PAGE: DASHBOARD -->
    <div id="page-dashboard" class="sp-page visible">
      <div class="sp-page-header">
        <div class="sp-breadcrumb"><a href="#">YSY Solutions</a> › <a href="#">DIAG YSY Franchise</a> › Tableau de bord</div>
        <div class="sp-page-title">Suivi des franchisés — DIAG YSY</div>
        <div class="sp-page-sub">Vue d'ensemble du pipeline de signature et des dossiers en cours · Mis à jour le 23 avril 2026</div>
        <div class="sp-page-actions">
          <button class="sp-btn sp-btn-primary" onclick="showPage('dossiers');setNav(document.querySelectorAll('.sp-nav-item')[1])">+ Nouveau dossier</button>
          <button class="sp-btn sp-btn-secondary">Exporter Excel</button>
          <button class="sp-btn sp-btn-ghost">Partager</button>
        </div>
      </div>
      <div class="sp-content">
        <div class="sp-kpi-row">
          <div class="sp-kpi sp-kpi-accent">
            <div class="sp-kpi-label">Dossiers en cours</div>
            <div class="sp-kpi-val">3</div>
            <div class="sp-kpi-sub">dont 1 en attente DIP</div>
          </div>
          <div class="sp-kpi sp-kpi-accent-green">
            <div class="sp-kpi-label">Franchisés actifs</div>
            <div class="sp-kpi-val">1</div>
            <div class="sp-kpi-sub">depuis sept. 2025</div>
          </div>
          <div class="sp-kpi sp-kpi-accent-warn">
            <div class="sp-kpi-label">Délai moyen signature</div>
            <div class="sp-kpi-val">34j</div>
            <div class="sp-kpi-sub">depuis premier contact</div>
          </div>
          <div class="sp-kpi sp-kpi-accent-teal">
            <div class="sp-kpi-label">Taux de conversion</div>
            <div class="sp-kpi-val">67%</div>
            <div class="sp-kpi-sub">candidats qualifiés → signature</div>
          </div>
        </div>

        <div class="sp-section-title">Pipeline de signature</div>
        <div class="pipeline">
          <div class="pipe-seg">
            <div class="pipe-label">Qualification</div>
            <div class="pipe-count">2</div>
            <div class="pipe-sub">J−60 → J−21</div>
          </div>
          <div class="pipe-seg active-pipe">
            <div class="pipe-label">DIP remis</div>
            <div class="pipe-count">1</div>
            <div class="pipe-sub">délai en cours</div>
          </div>
          <div class="pipe-seg">
            <div class="pipe-label">Préparation</div>
            <div class="pipe-count">0</div>
            <div class="pipe-sub">J−20 → J0</div>
          </div>
          <div class="pipe-seg">
            <div class="pipe-label">Signature J0</div>
            <div class="pipe-count">0</div>
            <div class="pipe-sub">à planifier</div>
          </div>
          <div class="pipe-seg">
            <div class="pipe-label">Actif</div>
            <div class="pipe-count">1</div>
            <div class="pipe-sub">en activité</div>
          </div>
        </div>

        <div class="sp-section-title">Dossiers récents</div>
        <div class="sp-table-wrap">
          <table class="sp-table">
            <thead>
              <tr>
                <th>Candidat</th>
                <th>Zone</th>
                <th>Étape</th>
                <th>Date DIP</th>
                <th>J0 estimé</th>
                <th>Avancement</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#deecf9;color:#005a9e;">JV</div><span class="name link" onclick="showPage('dossier-jv');setNav(document.querySelectorAll('.sp-nav-item')[1])">Jérôme VERSOLATO</span></div></td>
                <td>Grenoble (38)</td>
                <td><span class="badge badge-blue"><span class="badge-dot"></span>DIP remis</span></td>
                <td>03/04/2026</td>
                <td>23/04/2026</td>
                <td>
                  <div class="progress-wrap" style="min-width:80px;">
                    <div class="progress-bar"><div class="progress-fill" style="width:55%"></div></div>
                  </div>
                </td>
                <td><button class="sp-btn sp-btn-secondary" style="padding:3px 8px;font-size:11px;" onclick="showPage('dossier-jv');setNav(document.querySelectorAll('.sp-nav-item')[1])">Ouvrir</button></td>
              </tr>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#dff6dd;color:#107c10;">AL</div><span class="name link">Antoine LEBLANC</span></div></td>
                <td>Valence (26)</td>
                <td><span class="badge badge-warn"><span class="badge-dot"></span>Qualification</span></td>
                <td>—</td>
                <td>Juin 2026</td>
                <td>
                  <div class="progress-wrap" style="min-width:80px;">
                    <div class="progress-bar"><div class="progress-fill" style="width:20%"></div></div>
                  </div>
                </td>
                <td><button class="sp-btn sp-btn-ghost" style="padding:3px 8px;font-size:11px;">Ouvrir</button></td>
              </tr>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#fde7e9;color:#a4262c;">SM</div><span class="name link">Sophie MARTIN</span></div></td>
                <td>Chambéry (73)</td>
                <td><span class="badge badge-gray"><span class="badge-dot"></span>Premier contact</span></td>
                <td>—</td>
                <td>—</td>
                <td>
                  <div class="progress-wrap" style="min-width:80px;">
                    <div class="progress-bar"><div class="progress-fill" style="width:5%"></div></div>
                  </div>
                </td>
                <td><button class="sp-btn sp-btn-ghost" style="padding:3px 8px;font-size:11px;">Ouvrir</button></td>
              </tr>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#e0f3f4;color:#038387;">PD</div><span class="name link">Pierre DURAND</span></div></td>
                <td>Lyon Nord (69)</td>
                <td><span class="badge badge-green"><span class="badge-dot"></span>Franchisé actif</span></td>
                <td>01/08/2025</td>
                <td>01/09/2025</td>
                <td>
                  <div class="progress-wrap" style="min-width:80px;">
                    <div class="progress-bar"><div class="progress-fill green" style="width:100%"></div></div>
                  </div>
                </td>
                <td><button class="sp-btn sp-btn-ghost" style="padding:3px 8px;font-size:11px;">Voir fiche</button></td>
              </tr>
            </tbody>
          </table>
        </div>

        <div style="display:grid;grid-template-columns:1fr 1fr;gap:16px;">
          <div>
            <div class="sp-section-title">Alertes et échéances</div>
            <div class="sp-alert sp-alert-warn">
              <svg width="14" height="14" viewBox="0 0 16 16" fill="currentColor" style="flex-shrink:0;margin-top:1px"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zm0 11.5a.75.75 0 110-1.5.75.75 0 010 1.5zm0-9.5v6h-1V3h1z"/></svg>
              <div><strong>Jérôme VERSOLATO</strong> — Délai DIP expiré aujourd'hui (23/04). La signature peut avoir lieu dès maintenant. Vérifier le virement du droit d'entrée (6 500 € HT).</div>
            </div>
            <div class="sp-alert sp-alert-info">
              <svg width="14" height="14" viewBox="0 0 16 16" fill="currentColor" style="flex-shrink:0;margin-top:1px"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zm0 11.5a.75.75 0 110-1.5.75.75 0 010 1.5zM7.5 5h1v5h-1V5z"/></svg>
              <div><strong>Antoine LEBLANC</strong> — Réunion terrain à planifier. Zone Valence disponible confirmée. Rappel téléphonique prévu semaine 18.</div>
            </div>
            <div class="sp-alert sp-alert-info">
              <svg width="14" height="14" viewBox="0 0 16 16" fill="currentColor" style="flex-shrink:0;margin-top:1px"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zm0 11.5a.75.75 0 110-1.5.75.75 0 010 1.5zM7.5 5h1v5h-1V5z"/></svg>
              <div><strong>Pierre DURAND (Actif)</strong> — Premier bilan à 6 mois prévu en mars 2026. Réunion trimestrielle réseau à confirmer pour mai 2026.</div>
            </div>
          </div>
          <div>
            <div class="sp-section-title">Activité récente</div>
            <div class="timeline">
              <div class="tl-item">
                <div class="tl-left"><div class="tl-dot done"></div><div class="tl-line"></div></div>
                <div class="tl-body"><div class="tl-title">DIP remis — Jérôme VERSOLATO</div><div class="tl-date">03/04/2026</div><div class="tl-note">LRAR envoyée. Délai expiré le 23/04/2026.</div></div>
              </div>
              <div class="tl-item">
                <div class="tl-left"><div class="tl-dot done"></div><div class="tl-line"></div></div>
                <div class="tl-body"><div class="tl-title">Réunion terrain — Antoine LEBLANC</div><div class="tl-date">18/03/2026</div><div class="tl-note">Accord de principe. Valence zone validée.</div></div>
              </div>
              <div class="tl-item">
                <div class="tl-left"><div class="tl-dot done"></div><div class="tl-line"></div></div>
                <div class="tl-body"><div class="tl-title">Contrat signé — Pierre DURAND</div><div class="tl-date">01/09/2025</div><div class="tl-note">Droit d'entrée réglé. Formation initiale réalisée.</div></div>
              </div>
              <div class="tl-item">
                <div class="tl-left"><div class="tl-dot done"></div></div>
                <div class="tl-body"><div class="tl-title">Lancement réseau franchise</div><div class="tl-date">01/09/2025</div><div class="tl-note">1er franchisé intégré au réseau DIAG YSY.</div></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- PAGE: DOSSIER JÉRÔME VERSOLATO -->
    <div id="page-dossier-jv" class="sp-page">
      <div class="sp-page-header">
        <div class="sp-breadcrumb"><a href="#" onclick="showPage('dashboard')">Tableau de bord</a> › <a href="#" onclick="showPage('dossiers')">Dossiers</a> › Jérôme VERSOLATO</div>
        <div style="display:flex;align-items:center;gap:12px;">
          <div class="avatar" style="width:44px;height:44px;font-size:15px;background:#deecf9;color:#005a9e;">JV</div>
          <div>
            <div class="sp-page-title">Jérôme VERSOLATO</div>
            <div class="sp-page-sub">Candidat franchisé · Zone Grenoble (38) · <span class="badge badge-blue" style="vertical-align:middle">DIP remis — délai expiré</span></div>
          </div>
        </div>
        <div class="sp-page-actions">
          <button class="sp-btn sp-btn-primary">Planifier signature J0</button>
          <button class="sp-btn sp-btn-secondary">Envoyer email</button>
          <button class="sp-btn sp-btn-ghost">Imprimer dossier</button>
        </div>
      </div>
      <div class="sp-content">
        <div class="sp-alert sp-alert-success">
          <svg width="14" height="14" viewBox="0 0 16 16" fill="currentColor" style="flex-shrink:0;margin-top:1px"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zm3.78 5.78l-4.5 4.5a.75.75 0 01-1.06 0l-2-2a.75.75 0 011.06-1.06l1.47 1.47 3.97-3.97a.75.75 0 011.06 1.06z"/></svg>
          <div>Le délai légal de 20 jours depuis la remise du DIP est écoulé depuis ce jour. <strong>La signature du contrat et le paiement du droit d'entrée peuvent avoir lieu.</strong></div>
        </div>

        <div class="sp-two-col">
          <div>
            <div class="sp-section-title">Avancement du dossier</div>
            <div class="sp-card">
              <div class="sp-card-title">Progression globale
                <span style="margin-left:auto;font-size:13px;font-weight:400;color:var(--sp-blue)">55%</span>
              </div>
              <div class="progress-wrap">
                <div class="progress-label"><span>0%</span><span>100%</span></div>
                <div class="progress-bar" style="height:10px;border-radius:5px;"><div class="progress-fill" style="width:55%;height:10px;border-radius:5px;"></div></div>
              </div>

              <div style="margin-top:14px;">
                <div class="cl-phase-header">Phase 1 — Qualification</div>
                <div class="checklist">
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">Premier contact téléphonique réalisé</span></div>
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">Réunion d'information approfondie (visio)</span></div>
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">Visite terrain / rencontre franchiseur</span></div>
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">Accord de principe des deux parties</span></div>
                </div>

                <div class="cl-phase-header">Phase 2 — Remise DIP</div>
                <div class="checklist">
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">DIP personnalisé (zone Grenoble, comptes prévisionnels)</span></div>
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">DIP remis par LRAR le 03/04/2026</span></div>
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">Projet de contrat joint au DIP</span></div>
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">Déclaration candidat signée</span></div>
                </div>

                <div class="cl-phase-header">Phase 3 — Préparation J0</div>
                <div class="checklist">
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">CNI recto/verso reçue</span></div>
                  <div class="cl-item checked" onclick="toggleCl(this)"><div class="cl-check done"></div><span class="cl-text">Justificatif de domicile reçu</span></div>
                  <div class="cl-item" onclick="toggleCl(this)"><div class="cl-check"></div><span class="cl-text">Contrat finalisé et tous champs complétés</span></div>
                  <div class="cl-item" onclick="toggleCl(this)"><div class="cl-check"></div><span class="cl-text">Validation juridique (avocat partenaire)</span></div>
                </div>

                <div class="cl-phase-header">Phase 4 — Signature J0</div>
                <div class="checklist">
                  <div class="cl-item" onclick="toggleCl(this)"><div class="cl-check"></div><span class="cl-text">Virement 7 800 € TTC confirmé</span></div>
                  <div class="cl-item" onclick="toggleCl(this)"><div class="cl-check"></div><span class="cl-text">Contrat signé (2 originaux)</span></div>
                  <div class="cl-item" onclick="toggleCl(this)"><div class="cl-check"></div><span class="cl-text">Quittance droit d'entrée émise</span></div>
                  <div class="cl-item" onclick="toggleCl(this)"><div class="cl-check"></div><span class="cl-text">Pack démarrage remis (Liciel, email, manuel)</span></div>
                  <div class="cl-item" onclick="toggleCl(this)"><div class="cl-check"></div><span class="cl-text">Formation initiale planifiée</span></div>
                </div>
              </div>
            </div>
          </div>

          <div>
            <div class="sp-section-title">Fiche candidat</div>
            <div class="sp-card">
              <div class="sp-card-title">Identité</div>
              <table style="width:100%;font-size:12px;border-collapse:collapse;">
                <tr><td style="color:var(--sp-text2);padding:3px 0;width:45%">Nom complet</td><td style="font-weight:500">Jérôme VERSOLATO</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">Zone</td><td>Grenoble (38) + agglomération</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">Structure</td><td>EURL en cours de création</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">Email</td><td style="color:var(--sp-blue)">j.versolato@email.fr</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">Téléphone</td><td>06 xx xx xx xx</td></tr>
              </table>
            </div>
            <div class="sp-card">
              <div class="sp-card-title">Certifications</div>
              <div style="display:flex;flex-wrap:wrap;gap:4px;">
                <span class="badge badge-green">DPE + mention</span>
                <span class="badge badge-green">Amiante + mention</span>
                <span class="badge badge-green">CREP (plomb)</span>
                <span class="badge badge-green">Électricité</span>
                <span class="badge badge-green">Gaz</span>
                <span class="badge badge-warn">Audit énergétique — en cours</span>
              </div>
            </div>
            <div class="sp-card">
              <div class="sp-card-title">Financier</div>
              <table style="width:100%;font-size:12px;border-collapse:collapse;">
                <tr><td style="color:var(--sp-text2);padding:3px 0;width:55%">Droit d'entrée</td><td style="font-weight:500">6 500 € HT</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">TVA (20%)</td><td>1 300 €</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0;font-weight:600">Total à régler J0</td><td style="font-weight:600;color:var(--sp-blue)">7 800 € TTC</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">Option matériel</td><td><span class="badge badge-teal">Oui — 195 €/mois</span></td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">CA objectif an 1</td><td>~8 000 €/mois</td></tr>
                <tr><td style="color:var(--sp-text2);padding:3px 0">Royalties estimées</td><td>~425 €/mois HT</td></tr>
              </table>
            </div>
            <div class="sp-card">
              <div class="sp-card-title">Chronologie</div>
              <div class="timeline">
                <div class="tl-item">
                  <div class="tl-left"><div class="tl-dot done"></div><div class="tl-line"></div></div>
                  <div class="tl-body"><div class="tl-title">Premier contact</div><div class="tl-date">12/02/2026</div></div>
                </div>
                <div class="tl-item">
                  <div class="tl-left"><div class="tl-dot done"></div><div class="tl-line"></div></div>
                  <div class="tl-body"><div class="tl-title">Réunion d'info + terrain</div><div class="tl-date">05/03/2026</div></div>
                </div>
                <div class="tl-item">
                  <div class="tl-left"><div class="tl-dot active"></div><div class="tl-line"></div></div>
                  <div class="tl-body"><div class="tl-title">Remise DIP (J−20)</div><div class="tl-date">03/04/2026</div><div class="tl-note">LRAR — AR reçu le 05/04</div></div>
                </div>
                <div class="tl-item">
                  <div class="tl-left"><div class="tl-dot pending"></div></div>
                  <div class="tl-body"><div class="tl-title">Signature contrat (J0)</div><div class="tl-date" style="color:var(--sp-blue);font-weight:500">À planifier dès aujourd'hui</div></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- PAGE: DOSSIERS -->
    <div id="page-dossiers" class="sp-page">
      <div class="sp-page-header">
        <div class="sp-breadcrumb"><a href="#" onclick="showPage('dashboard')">Tableau de bord</a> › Dossiers franchisés</div>
        <div class="sp-page-title">Dossiers franchisés</div>
        <div class="sp-page-sub">Gestion de tous les candidats et franchisés actifs du réseau DIAG YSY</div>
        <div class="sp-page-actions">
          <button class="sp-btn sp-btn-primary">+ Nouveau dossier</button>
          <button class="sp-btn sp-btn-ghost">Exporter</button>
        </div>
      </div>
      <div class="sp-content">
        <div class="sp-searchbar">
          <svg viewBox="0 0 16 16" fill="currentColor"><path d="M11.742 10.344a6.5 6.5 0 10-1.397 1.398l3.85 3.85a1 1 0 001.415-1.414l-3.868-3.834zm-5.242 1.156a5 5 0 110-10 5 5 0 010 10z"/></svg>
          <input type="text" placeholder="Rechercher un candidat, une zone, un statut…">
        </div>
        <div class="filter-row">
          <span style="font-size:12px;color:var(--sp-text2)">Filtrer :</span>
          <span class="filter-chip active">Tous (4)</span>
          <span class="filter-chip">Qualification (2)</span>
          <span class="filter-chip">DIP remis (1)</span>
          <span class="filter-chip">Actifs (1)</span>
        </div>
        <div class="sp-table-wrap">
          <table class="sp-table">
            <thead>
              <tr>
                <th>Candidat / Franchisé</th>
                <th>Zone exclusive</th>
                <th>Statut</th>
                <th>Date premier contact</th>
                <th>Date DIP</th>
                <th>J0 / Signature</th>
                <th>Certifications</th>
                <th>Avancement</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#deecf9;color:#005a9e;">JV</div><span class="name link" onclick="showPage('dossier-jv')">Jérôme VERSOLATO</span></div></td>
                <td>Grenoble (38)</td>
                <td><span class="badge badge-blue">DIP remis</span></td>
                <td>12/02/2026</td>
                <td>03/04/2026</td>
                <td style="color:var(--sp-blue);font-weight:500">À planifier</td>
                <td><span class="badge badge-green">5/6</span></td>
                <td><div class="progress-bar"><div class="progress-fill" style="width:55%"></div></div></td>
              </tr>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#dff6dd;color:#107c10;">AL</div><span class="name link">Antoine LEBLANC</span></div></td>
                <td>Valence (26)</td>
                <td><span class="badge badge-warn">Qualification</span></td>
                <td>01/03/2026</td>
                <td>—</td>
                <td>—</td>
                <td><span class="badge badge-gray">3/6</span></td>
                <td><div class="progress-bar"><div class="progress-fill" style="width:20%"></div></div></td>
              </tr>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#fde7e9;color:#a4262c;">SM</div><span class="name link">Sophie MARTIN</span></div></td>
                <td>Chambéry (73)</td>
                <td><span class="badge badge-gray">Premier contact</span></td>
                <td>10/04/2026</td>
                <td>—</td>
                <td>—</td>
                <td><span class="badge badge-gray">1/6</span></td>
                <td><div class="progress-bar"><div class="progress-fill" style="width:5%"></div></div></td>
              </tr>
              <tr>
                <td><div style="display:flex;align-items:center;gap:8px;"><div class="avatar" style="background:#e0f3f4;color:#038387;">PD</div><span class="name link">Pierre DURAND</span></div></td>
                <td>Lyon Nord (69)</td>
                <td><span class="badge badge-green">Actif</span></td>
                <td>15/06/2025</td>
                <td>01/08/2025</td>
                <td>01/09/2025</td>
                <td><span class="badge badge-green">6/6</span></td>
                <td><div class="progress-bar"><div class="progress-fill green" style="width:100%"></div></div></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <!-- PAGE: PROCESSUS -->
    <div id="page-process" class="sp-page">
      <div class="sp-page-header">
        <div class="sp-breadcrumb"><a href="#" onclick="showPage('dashboard')">Tableau de bord</a> › Processus de signature</div>
        <div class="sp-page-title">Processus de signature — DIAG YSY</div>
        <div class="sp-page-sub">Guide étape par étape pour mener un candidat jusqu'à la signature du contrat de franchise</div>
      </div>
      <div class="sp-content">
        <div style="display:grid;grid-template-columns:1fr 1fr;gap:14px;margin-bottom:20px;">
          <div class="sp-card">
            <div class="sp-card-title" style="color:var(--sp-blue)">Phase 1 — Qualification (J−60 à J−21)</div>
            <div class="checklist">
              <div class="cl-item"><div class="cl-check done"></div><span class="cl-text">Premier contact : motivations, certifications, zone, capacité financière</span></div>
              <div class="cl-item"><div class="cl-check done"></div><span class="cl-text">Réunion d'info : concept PMR, royalties TMI inversé, zone exclusive</span></div>
              <div class="cl-item"><div class="cl-check done"></div><span class="cl-text">Visite terrain chez YSY SOLUTIONS à Saint-Siméon-de-Bressieux</span></div>
              <div class="cl-item"><div class="cl-check done"></div><span class="cl-text">Accord de principe + compte rendu rédigé</span></div>
            </div>
          </div>
          <div class="sp-card">
            <div class="sp-card-title" style="color:var(--sp-warn)">Phase 2 — Remise DIP (J−20 impératif)</div>
            <div class="sp-alert sp-alert-warn" style="margin-bottom:8px;font-size:11px;padding:7px 10px">Art. L.330-3 Code de commerce : délai de 20 jours incompressible avant toute signature ou paiement.</div>
            <div class="checklist">
              <div class="cl-item"><div class="cl-check done"></div><span class="cl-text">DIP personnalisé : zone, comptes prévisionnels, bilans 2022–2024</span></div>
              <div class="cl-item"><div class="cl-check done"></div><span class="cl-text">Remise DIP + projet contrat par LRAR (conserver l'AR)</span></div>
              <div class="cl-item"><div class="cl-check done"></div><span class="cl-text">Déclaration candidat signée (dernière page du DIP)</span></div>
            </div>
          </div>
          <div class="sp-card">
            <div class="sp-card-title" style="color:var(--sp-teal)">Phase 3 — Préparation (J−20 → J0)</div>
            <div class="checklist">
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Collecte pièces : CNI, justif. domicile ou KBIS selon statut</span></div>
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Personnalisation complète du contrat (tous les champs en CAPITALES)</span></div>
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Relecture et validation par l'avocat partenaire</span></div>
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Contrat transmis au franchisé pour relecture finale</span></div>
            </div>
          </div>
          <div class="sp-card">
            <div class="sp-card-title" style="color:var(--sp-success)">Phase 4 — Signature J0</div>
            <div class="checklist">
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">21+ jours depuis DIP vérifiés</span></div>
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Contrat imprimé en 2 originaux + paraphé chaque page</span></div>
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Virement 7 800 € TTC reçu + quittance émise</span></div>
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Pack démarrage remis : Liciel, @diagysy.com, manuel</span></div>
              <div class="cl-item"><div class="cl-check"></div><span class="cl-text">Formation initiale 2 jours planifiée</span></div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- PAGE: FINANCIER -->
    <div id="page-financier" class="sp-page">
      <div class="sp-page-header">
        <div class="sp-breadcrumb"><a href="#" onclick="showPage('dashboard')">Tableau de bord</a> › Financier</div>
        <div class="sp-page-title">Volet financier — Royalties & investissements</div>
        <div class="sp-page-sub">Barème TMI inversé, simulations et modalités de paiement</div>
      </div>
      <div class="sp-content">
        <div class="sp-kpi-row">
          <div class="sp-kpi sp-kpi-accent"><div class="sp-kpi-label">Droit d'entrée</div><div class="sp-kpi-val">6 500 €</div><div class="sp-kpi-sub">HT — paiement unique J0</div></div>
          <div class="sp-kpi sp-kpi-accent"><div class="sp-kpi-label">Royalties plancher</div><div class="sp-kpi-val">275 €</div><div class="sp-kpi-sub">HT/mois jusqu'à 5 000 € CA</div></div>
          <div class="sp-kpi sp-kpi-accent-teal"><div class="sp-kpi-label">Option matériel</div><div class="sp-kpi-val">195 €</div><div class="sp-kpi-sub">HT/mois (optionnel)</div></div>
          <div class="sp-kpi sp-kpi-accent-warn"><div class="sp-kpi-label">Exigibilité royalties</div><div class="sp-kpi-val">10</div><div class="sp-kpi-sub">du mois — transmission CA avant le 5</div></div>
        </div>

        <div class="sp-section-title">Barème royalties TMI inversé (art. 4-2)</div>
        <div class="sp-table-wrap">
          <table class="sp-table">
            <thead><tr><th>Tranche CA mensuel HT</th><th>Taux</th><th>Royalties max / tranche</th><th>Cumul annuel</th><th>Taux effectif global</th></tr></thead>
            <tbody>
              <tr><td style="font-weight:500">0 € – 5 000 €</td><td><span class="badge badge-blue">Forfait</span></td><td>275 €/mois</td><td>3 300 € HT</td><td>5,50 %</td></tr>
              <tr><td style="font-weight:500">5 001 € – 10 000 €</td><td><span class="badge badge-blue">5,0 %</span></td><td>250 € max</td><td>+ 3 000 € HT</td><td>5,25 %</td></tr>
              <tr><td style="font-weight:500">10 001 € – 15 000 €</td><td><span class="badge badge-teal">4,5 %</span></td><td>225 € max</td><td>+ 2 700 € HT</td><td>5,00 %</td></tr>
              <tr><td style="font-weight:500">15 001 € – 30 000 €</td><td><span class="badge badge-teal">4,0 %</span></td><td>600 € max</td><td>+ 7 200 € HT</td><td>4,50 %</td></tr>
              <tr><td style="font-weight:500">30 001 € – 50 000 €</td><td><span class="badge badge-green">2,5 %</span></td><td>500 € max</td><td>+ 6 000 € HT</td><td>3,70 %</td></tr>
              <tr><td style="font-weight:500">50 001 € et +</td><td><span class="badge badge-green">1,5 %</span></td><td>Illimité</td><td>1,5 % du CA</td><td>2,60 %</td></tr>
            </tbody>
          </table>
        </div>

        <div class="sp-section-title">Simulateur de royalties</div>
        <div class="sp-card" style="max-width:500px;">
          <div class="sp-card-title">Calculer les royalties mensuelles</div>
          <div class="sp-field-row">
            <div class="sp-field">
              <label>CA mensuel HT (€)</label>
              <input type="number" id="ca-input" value="8000" min="0" oninput="calcRoyalties()">
            </div>
            <div class="sp-field">
              <label>Résultat</label>
              <div id="royalties-result" style="font-size:20px;font-weight:600;color:var(--sp-blue);padding-top:4px;">425 €/mois HT</div>
            </div>
          </div>
          <div id="royalties-detail" style="font-size:12px;color:var(--sp-text2);margin-top:6px;">
            Tranche 1 : 275 € + tranche 2 : 150 € (5% × 3 000 €) = 425 €/mois HT
          </div>
          <div style="margin-top:10px;">
            <div class="progress-wrap">
              <div class="progress-label"><span id="r-pct">Taux effectif : 5,31 %</span><span id="r-annual">5 100 €/an HT</span></div>
              <div class="progress-bar" style="height:8px;"><div class="progress-fill" id="r-bar" style="width:40%;height:8px;"></div></div>
            </div>
          </div>
        </div>

        <div class="sp-section-title">Pénalités de retard (art. 4-4)</div>
        <div class="sp-alert sp-alert-warn">
          <svg width="14" height="14" viewBox="0 0 16 16" fill="currentColor" style="flex-shrink:0;margin-top:1px"><path d="M8 1a7 7 0 100 14A7 7 0 008 1zm0 11.5a.75.75 0 110-1.5.75.75 0 010 1.5zm0-9.5v6h-1V3h1z"/></svg>
          <div>Retard de paiement : <strong>10% du montant TTC</strong> + indemnité forfaitaire <strong>40 €</strong> + clause pénale <strong>10% de la facture</strong>. Un retard persistant peut entraîner la résiliation du contrat.</div>
        </div>
      </div>
    </div>

    <!-- PAGE: DOCUMENTS -->
    <div id="page-docs" class="sp-page">
      <div class="sp-page-header">
        <div class="sp-breadcrumb"><a href="#" onclick="showPage('dashboard')">Tableau de bord</a> › Documents</div>
        <div class="sp-page-title">Bibliothèque de documents</div>
        <div class="sp-page-sub">Tous les documents du système de signature DIAG YSY</div>
      </div>
      <div class="sp-content">
        <div class="sp-table-wrap">
          <table class="sp-table">
            <thead><tr><th>Document</th><th>Type</th><th>Version</th><th>Usage</th><th>Statut</th></tr></thead>
            <tbody>
              <tr><td class="name">Lettre de remise du DIP</td><td><span class="badge badge-blue">Word (.docx)</span></td><td>v1.0 — avr. 2026</td><td>Phase 2 — à envoyer au candidat par LRAR</td><td><span class="badge badge-green">Prêt</span></td></tr>
              <tr><td class="name">Fiche de synthèse candidat</td><td><span class="badge badge-blue">Word (.docx)</span></td><td>v1.0 — avr. 2026</td><td>Phase 1 — usage interne, dossier franchiseur</td><td><span class="badge badge-green">Prêt</span></td></tr>
              <tr><td class="name">Checklist de signature J0</td><td><span class="badge badge-blue">Word (.docx)</span></td><td>v1.0 — avr. 2026</td><td>Phase 4 — vérification le jour de la signature</td><td><span class="badge badge-green">Prêt</span></td></tr>
              <tr><td class="name">Guide financier — royalties</td><td><span class="badge badge-blue">Word (.docx)</span></td><td>v1.0 — avr. 2026</td><td>Phase 1 — à remettre au candidat en réunion</td><td><span class="badge badge-green">Prêt</span></td></tr>
              <tr><td class="name">Contrat de franchise</td><td><span class="badge badge-teal">Contrat</span></td><td>12/09/2025</td><td>Phase 3 — à personnaliser et signer</td><td><span class="badge badge-warn">À personnaliser</span></td></tr>
              <tr><td class="name">DIP (Document d'Information Précontractuel)</td><td><span class="badge badge-teal">Légal</span></td><td>01/08/2025</td><td>Phase 2 — remise obligatoire J−20</td><td><span class="badge badge-green">Validé</span></td></tr>
              <tr><td class="name">Présentation franchise DIAG YSY</td><td><span class="badge badge-gray">Présentation</span></td><td>2025</td><td>Phase 1 — présentation candidat</td><td><span class="badge badge-green">Prêt</span></td></tr>
              <tr><td class="name">Analyse de marché franchise</td><td><span class="badge badge-gray">Étude</span></td><td>2025</td><td>Annexe DIP — marché et concurrence</td><td><span class="badge badge-green">Prêt</span></td></tr>
              <tr><td class="name">Manuel opératoire DIAG YSY</td><td><span class="badge badge-gray">Interne</span></td><td>En cours</td><td>Remis à J0 avec le pack démarrage</td><td><span class="badge badge-warn">À finaliser</span></td></tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <!-- PAGE: CONTACTS -->
    <div id="page-contacts" class="sp-page">
      <div class="sp-page-header">
        <div class="sp-breadcrumb"><a href="#" onclick="showPage('dashboard')">Tableau de bord</a> › Contacts</div>
        <div class="sp-page-title">Contacts clés — réseau DIAG YSY</div>
      </div>
      <div class="sp-content">
        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:12px;">
          <div class="sp-card">
            <div style="display:flex;align-items:center;gap:10px;margin-bottom:10px;">
              <div class="avatar" style="width:40px;height:40px;font-size:14px;background:#deecf9;color:#005a9e;">YN</div>
              <div><div style="font-weight:600;font-size:13px">Youssef N'AIT DRISS</div><div style="font-size:11px;color:var(--sp-text2)">Cogérant — YSY Solutions</div></div>
            </div>
            <table style="width:100%;font-size:11px;border-collapse:collapse;">
              <tr><td style="color:var(--sp-text2);padding:2px 0">Rôle</td><td>Responsable technique & admin</td></tr>
              <tr><td style="color:var(--sp-text2);padding:2px 0">Email</td><td style="color:var(--sp-blue)">y.naitdriss@diagysy.com</td></tr>
              <tr><td style="color:var(--sp-text2);padding:2px 0">Adresse</td><td>309 Rue des Vignes, 38870</td></tr>
            </table>
          </div>
          <div class="sp-card">
            <div style="display:flex;align-items:center;gap:10px;margin-bottom:10px;">
              <div class="avatar" style="width:40px;height:40px;font-size:14px;background:#e0f3f4;color:#038387;">YT</div>
              <div><div style="font-weight:600;font-size:13px">Yann TACUSSEL</div><div style="font-size:11px;color:var(--sp-text2)">Cogérant — YSY Solutions</div></div>
            </div>
            <table style="width:100%;font-size:11px;border-collapse:collapse;">
              <tr><td style="color:var(--sp-text2);padding:2px 0">Rôle</td><td>Responsable commercial & dev.</td></tr>
              <tr><td style="color:var(--sp-text2);padding:2px 0">Email</td><td style="color:var(--sp-blue)">y.tacussel@diagysy.com</td></tr>
              <tr><td style="color:var(--sp-text2);padding:2px 0">Adresse</td><td>3 Place du Château, 38690</td></tr>
            </table>
          </div>
          <div class="sp-card">
            <div style="display:flex;align-items:center;gap:10px;margin-bottom:10px;">
              <div class="avatar" style="width:40px;height:40px;font-size:14px;background:#dff6dd;color:#107c10;">PD</div>
              <div><div style="font-weight:600;font-size:13px">Pierre DURAND</div><div style="font-size:11px;color:var(--sp-text2)">Franchisé actif — Lyon Nord (69)</div></div>
            </div>
            <table style="width:100%;font-size:11px;border-collapse:collapse;">
              <tr><td style="color:var(--sp-text2);padding:2px 0">Depuis</td><td>01/09/2025</td></tr>
              <tr><td style="color:var(--sp-text2);padding:2px 0">Email</td><td style="color:var(--sp-blue)">p.durand@diagysy.com</td></tr>
              <tr><td style="color:var(--sp-text2);padding:2px 0">Statut</td><td><span class="badge badge-green">Actif</span></td></tr>
            </table>
          </div>
          <div class="sp-card">
            <div style="display:flex;align-items:center;gap:10px;margin-bottom:10px;">
              <div class="avatar" style="width:40px;height:40px;font-size:14px;background:#fff4ce;color:#c19c00;">AV</div>
              <div><div style="font-weight:600;font-size:13px">Avocat partenaire</div><div style="font-size:11px;color:var(--sp-text2)">Via centrale d'achat DIAG YSY</div></div>
            </div>
            <table style="width:100%;font-size:11px;border-collapse:collapse;">
              <tr><td style="color:var(--sp-text2);padding:2px 0">Usage</td><td>Validation contrats de franchise</td></tr>
              <tr><td style="color:var(--sp-text2);padding:2px 0">Accès</td><td>Via centrale d'achat</td></tr>
            </table>
          </div>
        </div>
      </div>
    </div>

  </main>
</div>

<script>
var pages = ['dashboard','dossiers','process','financier','docs','contacts','dossier-jv'];

function showPage(id) {
  pages.forEach(function(p) {
    var el = document.getElementById('page-' + p);
    if (el) el.classList.remove('visible');
  });
  var target = document.getElementById('page-' + id);
  if (target) target.classList.add('visible');
}

function setNav(el) {
  document.querySelectorAll('.sp-nav-item').forEach(function(n) { n.classList.remove('active'); });
  el.classList.add('active');
}

function setTab(idx, el) {
  document.querySelectorAll('.sp-suite-tab').forEach(function(t) { t.classList.remove('active'); });
  el.classList.add('active');
  var map = ['dashboard','dossiers','process','financier','docs'];
  showPage(map[idx]);
}

function toggleCl(item) {
  var box = item.querySelector('.cl-check');
  box.classList.toggle('done');
  item.classList.toggle('checked');
}

function calcRoyalties() {
  var ca = parseFloat(document.getElementById('ca-input').value) || 0;
  var r = 0, detail = '';
  if (ca <= 5000) {
    r = 275;
    detail = 'Forfait plancher : 275 €/mois HT';
  } else if (ca <= 10000) {
    r = 275 + (ca - 5000) * 0.05;
    detail = 'Tranche 1 : 275 € + tranche 2 : ' + Math.round((ca-5000)*0.05) + ' € (5% × ' + Math.round(ca-5000).toLocaleString('fr') + ' €)';
  } else if (ca <= 15000) {
    r = 275 + 250 + (ca - 10000) * 0.045;
    detail = '275 + 250 (t2) + ' + Math.round((ca-10000)*0.045) + ' € (4,5% × ' + Math.round(ca-10000).toLocaleString('fr') + ' €)';
  } else if (ca <= 30000) {
    r = 275 + 250 + 225 + (ca - 15000) * 0.04;
    detail = '275 + 250 + 225 (t3) + ' + Math.round((ca-15000)*0.04) + ' € (4% × ' + Math.round(ca-15000).toLocaleString('fr') + ' €)';
  } else if (ca <= 50000) {
    r = 275 + 250 + 225 + 600 + (ca - 30000) * 0.025;
    detail = '275+250+225+600 (t4) + ' + Math.round((ca-30000)*0.025) + ' € (2,5% × ' + Math.round(ca-30000).toLocaleString('fr') + ' €)';
  } else {
    r = 275 + 250 + 225 + 600 + 500 + (ca - 50000) * 0.015;
    detail = '1 850 (tranches 1–5) + ' + Math.round((ca-50000)*0.015) + ' € (1,5% × ' + Math.round(ca-50000).toLocaleString('fr') + ' €)';
  }
  r = Math.round(r);
  var pct = ca > 0 ? (r / ca * 100).toFixed(2) : '0';
  var annual = r * 12;
  document.getElementById('royalties-result').textContent = r.toLocaleString('fr') + ' €/mois HT';
  document.getElementById('royalties-detail').textContent = detail;
  document.getElementById('r-pct').textContent = 'Taux effectif : ' + pct + ' %';
  document.getElementById('r-annual').textContent = annual.toLocaleString('fr') + ' €/an HT';
  var barPct = Math.min(100, Math.round(r / (ca * 0.07 || 1) * 100));
  document.getElementById('r-bar').style.width = Math.min(95, Math.round(parseFloat(pct) / 6 * 100)) + '%';
}
</script>
</body>
</html>
