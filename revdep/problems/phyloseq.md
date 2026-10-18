# phyloseq (1.56.0)

* GitHub: <https://github.com/joey711/phyloseq>
* Email: <mailto:joey711@gmail.com>
* GitHub mirror: <https://github.com/cran/phyloseq>

Run `revdepcheck::revdep_details(, "phyloseq")` for more info

## Newly broken

*   checking examples ... ERROR
     ```
     ...
     > data(enterotype)
     > plot_net(enterotype, color="SeqTech", maxdist = 0.3)
     Warning: `graph.data.frame()` was deprecated in igraph 2.0.0.
     ℹ Please use `graph_from_data_frame()` instead.
     ℹ The deprecated feature was likely used in the phyloseq package.
       Please report the issue at <https://github.com/joey711/phyloseq/issues>.
     > plot_net(enterotype, color="SeqTech", maxdist = 0.3, laymeth = "auto")
     Warning: `layout.auto()` was deprecated in igraph 2.0.0.
     ℹ Please use `layout_nicely()` instead.
     ℹ The deprecated feature was likely used in the phyloseq package.
       Please report the issue at <https://github.com/joey711/phyloseq/issues>.
     > plot_net(enterotype, color="SeqTech", maxdist = 0.3, laymeth = "svd")
     Error:
     ! `layout.svd()` was deprecated in igraph 2.1.0 and is now defunct.
     ℹ Please use `layout_with_fr()` instead.
     Backtrace:
         ▆
      1. └─phyloseq::plot_net(...)
      2.   └─phyloseq (local) vertex_layout(LinksData0, physeq, type, available_layouts[[laymeth]])
      3.     ├─data.table::data.table(...)
      4.     └─igraph (local) laymeth(g, ...)
      5.       └─lifecycle::deprecate_stop("2.1.0", "layout.svd()", "layout_with_fr()")
      6.         └─lifecycle:::deprecate_stop0(msg)
      7.           └─rlang::cnd_signal(...)
     Execution halted
     ```

## In both

*   checking for hidden files and directories ... NOTE
     ```
     Found the following hidden files and directories:
       .travis.yml
     These were most likely included in error. See section ‘Package
     structure’ in the ‘Writing R Extensions’ manual.
     ```

*   checking top-level files ... NOTE
     ```
     Non-standard files/directories found at top level:
       ‘README.html’ ‘TODO.txt’
     ```

*   checking R code for possible problems ... NOTE
     ```
     Found if() conditions comparing class() to string:
     File ‘phyloseq/R/IO-methods.R’: if (class(tree) == "phylo") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "dist") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "character") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "dist") ...
     File ‘phyloseq/R/network-methods.R’: if (class(distance) == "character") ...
     File ‘phyloseq/R/ordination-methods.R’: if (class(distance) == "character") ...
     File ‘phyloseq/R/plot-methods.R’: if (class(DF[, key.var]) == "factor") ...
     Use inherits() (or maybe is()) instead.
     ```

*   checking Rd line widths ... NOTE
     ```
     ...
          p0 = plot_heatmap(gpac, sample.label="SampleType", taxa.label="Family", taxa.order="Phylum", sample.order="SampleType")
          p1 = plot_heatmap(gpac, method=NULL, sample.label="SampleType", taxa.label="Family", taxa.order="Phylum", sample.order="SampleType")
          # Example: Order matters. Random ordering of OTU indices is difficult to interpret, even with structured sample order
          plot_heatmap(gpac, method=NULL, sample.label="SampleType", taxa.label="Family", taxa.order=rando, sample.order="SampleType")
          plot_heatmap(gpac, taxa.order="Family", sample.order="SampleType", first.taxa="546313", first.sample="NP2")
          plot_heatmap(gpac, sample.label="SampleType", taxa.label="Family", taxa.order="Family", sample.order="SampleType", first.taxa="546313", ... [TRUNCATED]
     
     Rd file 'plot_richness.Rd':
       \examples lines wider than 100 characters:
          plot_richness(GlobalPatterns, x="SampleType", measures=c("Chao1", "ACE", "InvSimpson"), nrow=3, sortby = "Chao1")
     
     Rd file 'prune_samples-methods.Rd':
       \examples lines wider than 100 characters:
           # (p <- plot_tree(GP.chl, color="SampleType", shape="Family", label.tips="Genus", size="abundance"))
     
     Rd file 'tip_glom.Rd':
       \examples lines wider than 100 characters:
          plot_tree(tip_glom(esophagus, h=0.2), label.tips="taxa_names", size="abundance", title="After tip_glom()")
     
     Rd file 'tree_layout.Rd':
       \examples lines wider than 100 characters:
          p0 = ggplot(treeSegs0$edgeDT, edgeMap) + geom_segment() + geom_segment(vertMap, data=treeSegs0$vertDT)
          p1 = ggplot(treeSegs1$edgeDT, edgeMap) + geom_segment() + geom_segment(vertMap, data=treeSegs1$vertDT)
     
     These lines will be truncated in the PDF manual.
     ```

*   checking Rd cross-references ... NOTE
     ```
     Found the following Rd file(s) with Rd \link{} targets missing package
     anchors:
       UniFrac-methods.Rd: foreach-package
       distance.Rd: designdist
       import_biom.Rd: foreach
       import_qiime_otu_tax.Rd: foreach-package
       import_uparse.Rd: data.table
       ordinate.Rd: cca, rda
       phyloseq.Rd: ape-package
       plot_bar.Rd: melt, ggplot, qplot
       plot_heatmap.Rd: log_trans, ggplot
       plot_net.Rd: igraph-package, ggplot, ggsave
       plot_network.Rd: ggplot
       plot_ordination.Rd: ggplot
       plot_richness.Rd: ggplot
       plot_scree.Rd: ggplot
       plot_tree.Rd: ape, ggplot, plot.phylo
       subset_ord_plot.Rd: ggplot
       tree_layout.Rd: data.table, ape-package
     Please provide package anchors for all Rd \link{} targets not in the
     package itself and the base packages.
     ```

