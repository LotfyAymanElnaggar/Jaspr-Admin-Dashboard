# React → Jaspr Migration Checklist (Dashboard)

## 1) Freeze baseline
- [x] Keep React app as reference at `react.lotfy.tech`
- [x] Keep Jaspr app as target at `jaspr.lotfy.tech`
- [ ] Capture screenshots per route (desktop first)

## 2) Project mode & structure
- [x] Use **client mode** for dashboard parity
- [x] Keep route-per-scene structure (`/`, `/team`, `/contacts`, `/invoices`, `/form`, `/bar`, `/pie`, `/line`, `/faq`, `/calendar`, `/geography`)
- [x] Keep shared global layers (`sidebar.dart`, `topbar.dart`, reusable components)

## 3) Global parity first
- [x] Sidebar width/collapse behavior
- [x] Topbar spacing/search/icons
- [x] Theme toggle dark/light
- [~] Typography scale + spacing tokens
- [~] Card borders/radius/shadows

## 4) Data layer parity
- [x] Mirror source mock datasets in Dart models
- [x] Normalize keys to table columns
- [x] Keep sample counts equal on core pages (team/invoices)

## 5) Table parity (Team/Contacts/Invoices)
- [x] Header row styling
- [x] Row height + column widths
- [x] Sorting
- [x] Filtering/search
- [x] Pagination footer
- [x] Selection checkboxes
- [x] Export CSV action

## 6) Dashboard parity
- [x] Stat cards block
- [x] Revenue block + line chart
- [x] Recent transactions list
- [x] Campaign donut
- [x] Sales quantity chart
- [~] Geography card + legend (visual approximation)

## 7) Chart parity strategy (Jaspr-native)
- [x] Consistent chart shell dimensions
- [x] Match palette close to React
- [x] Legends/labels placement
- [~] Axis/spacing fine tuning

## 8) Calendar parity
- [x] Toolbar (prev/today/next)
- [x] View switch (month/week/day)
- [x] Event list + add/remove actions
- [x] Day markers in month grid

## 9) Form + FAQ parity
- [x] Form grid layout
- [~] Required fields/basic validation
- [x] FAQ default expanded style + spacing

## 10) QA loop
- [x] Compare routes side-by-side with React (ongoing)
- [x] Fix layout then interactions
- [x] Rebuild + redeploy
- [x] Mark checklist status

## 11) Delivery hygiene
- [x] Keep `docs/GAP_REPORT.md` updated
- [x] Keep `docs/QA_CHECKLIST.md` updated
- [x] Tag stable milestone (`v1.0-parity-max`)
- [~] Publish GitHub release (token scope limitation)

---

## Notes
- `[x]` done
- `[~]` near parity / minor remaining gaps
- `[ ]` pending
