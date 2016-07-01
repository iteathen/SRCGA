.class public abstract Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;
.super Lcom/sun/javafx/scene/control/skin/CellSkinBase;
.source "TableRowSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljavafx/scene/control/IndexedCell;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase",
        "<TC;>;R:",
        "Ljavafx/scene/control/IndexedCell;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/CellSkinBase",
        "<TC;TB;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FULL_REFRESH_COUNTER:I = 0x64

.field private static DO_ANIMATIONS:Z

.field private static final FADE_DURATION:Ljavafx/util/Duration;

.field private static IS_STUB_TOOLKIT:Z

.field static final maxDisclosureWidthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/control/Control;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected cellsMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljavafx/scene/control/TableColumnBase;",
            "Ljava/lang/ref/Reference",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private fixedCellSize:D

.field private fixedCellSizeEnabled:Z

.field private fullRefreshCounter:I

.field protected isDirty:Z

.field protected updateCells:Z

.field private visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation
.end field

.field private weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StubToolkit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->IS_STUB_TOOLKIT:Z

    .line 71
    sget-boolean v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->IS_STUB_TOOLKIT:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->DO_ANIMATIONS:Z

    .line 73
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    invoke-static {v0, v1}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->FADE_DURATION:Ljavafx/util/Duration;

    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->maxDisclosureWidthMap:Ljava/util/Map;

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/control/IndexedCell;Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TB;)V"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;, "TB;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;-><init>(Ljavafx/scene/control/Cell;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 115
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    .line 117
    move-object v3, v0

    const/16 v4, 0x64

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fullRefreshCounter:I

    .line 119
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isDirty:Z

    .line 120
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells:Z

    .line 177
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    .line 182
    move-object v3, v0

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->visibleLeafColumnsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    .line 140
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->lambda$new$498(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->lambda$init$497(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private createCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/IndexedCell;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, p1

    .local v1, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/IndexedCell;

    move-result-object v3

    move-object v2, v3

    .line 701
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TR;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    move-object v4, v1

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 703
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return-object v0
.end method

.method private fadeIn(Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getOpacity()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 730
    :goto_0
    return-void

    .line 722
    :cond_0
    sget-boolean v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->DO_ANIMATIONS:Z

    if-nez v3, :cond_1

    .line 723
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 724
    goto :goto_0

    .line 727
    :cond_1
    new-instance v3, Ljavafx/animation/FadeTransition;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->FADE_DURATION:Ljavafx/util/Duration;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v2, v3

    .line 728
    .local v2, "fader":Ljavafx/animation/FadeTransition;
    move-object v3, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 729
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/FadeTransition;->play()V

    .line 730
    goto :goto_0
.end method

.method private fadeOut(Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getOpacity()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 717
    :goto_0
    return-void

    .line 709
    :cond_0
    sget-boolean v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->DO_ANIMATIONS:Z

    if-nez v3, :cond_1

    .line 710
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 711
    goto :goto_0

    .line 714
    :cond_1
    new-instance v3, Ljavafx/animation/FadeTransition;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->FADE_DURATION:Ljavafx/util/Duration;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v2, v3

    .line 715
    .local v2, "fader":Ljavafx/animation/FadeTransition;
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 716
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/animation/FadeTransition;->play()V

    .line 717
    goto :goto_0
.end method

.method private getVirtualFlow()Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    move-object v1, v2

    .line 545
    .local v1, "p":Ljavafx/scene/Parent;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 546
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    if-eqz v2, :cond_0

    .line 547
    move-object v2, v1

    check-cast v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v0, v2

    .line 551
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :goto_1
    return-object v0

    .line 549
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 551
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method private synthetic lambda$init$497(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->requestCellUpdate()V

    return-void
.end method

.method private synthetic lambda$new$498(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isDirty:Z

    .line 179
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->requestLayout()V

    .line 180
    return-void
.end method

.method private recreateCells()V
    .locals 10

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    if-eqz v5, :cond_2

    .line 665
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object v1, v5

    .line 666
    .local v1, "cells":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/Reference<TR;>;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .line 667
    .local v2, "cellsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/Reference<TR;>;>;"
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 668
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    move-object v3, v5

    .line 669
    .local v3, "cellRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TR;>;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/IndexedCell;

    move-object v4, v5

    .line 670
    .local v4, "cell":Ljavafx/scene/control/IndexedCell;, "TR;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 671
    move-object v5, v4

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/IndexedCell;->updateIndex(I)V

    .line 672
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/scene/control/Skin;->dispose()V

    .line 673
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/IndexedCell;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 675
    :cond_0
    goto :goto_0

    .line 676
    .end local v3    # "cellRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TR;>;"
    .end local v4    # "cell":Ljavafx/scene/control/IndexedCell;, "TR;"
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 679
    .end local v1    # "cells":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/Reference<TR;>;>;"
    .end local v2    # "cellsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/Reference<TR;>;>;"
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v1, v5

    .line 681
    .local v1, "columns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object v5, v0

    new-instance v6, Ljava/util/WeakHashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    .line 682
    move-object v5, v0

    const/16 v6, 0x64

    iput v6, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fullRefreshCounter:I

    .line 683
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 685
    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TableColumnBase;

    move-object v3, v5

    .line 686
    .local v3, "col":Ljavafx/scene/control/TableColumnBase;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 687
    goto :goto_1

    .line 692
    :cond_3
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->createCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    .line 693
    goto :goto_1

    .line 694
    .end local v3    # "col":Ljavafx/scene/control/TableColumnBase;
    :cond_4
    return-void
.end method

.method private requestCellUpdate()V
    .locals 6

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells:Z

    .line 649
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->requestLayout()V

    .line 657
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v4

    move v1, v4

    .line 658
    .local v1, "newIndex":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    .local v3, "max":I
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 659
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    move v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/IndexedCell;->updateIndex(I)V

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method


# virtual methods
.method protected final checkState()V
    .locals 3

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isDirty:Z

    if-eqz v1, :cond_1

    .line 631
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells(Z)V

    .line 632
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isDirty:Z

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells:Z

    if-eqz v1, :cond_0

    .line 634
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells(Z)V

    .line 635
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells:Z

    goto :goto_0
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 23

    .prologue
    .line 622
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    if-eqz v12, :cond_0

    .line 623
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    move-wide v1, v12

    .line 625
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :cond_0
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-super/range {v12 .. v22}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->computeMaxHeight(DDDDD)D

    move-result-wide v12

    move-wide v1, v12

    goto :goto_0
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 595
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 596
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    move-wide/from16 v18, v0

    move-wide/from16 v2, v18

    .line 618
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :goto_0
    return-wide v2

    .line 600
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->checkState()V

    .line 606
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getCellSize()D

    move-result-wide v18

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1

    .line 607
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getCellSize()D

    move-result-wide v18

    move-wide/from16 v2, v18

    goto :goto_0

    .line 612
    :cond_1
    const-wide/16 v18, 0x0

    move-wide/from16 v13, v18

    .line 613
    .local v13, "minHeight":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v15, v18

    .line 614
    .local v15, "count":I
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_1
    move/from16 v18, v16

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 615
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move-object/from16 v18, v0

    move/from16 v19, v16

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v17, v18

    .line 616
    .local v17, "tableCell":Ljavafx/scene/control/IndexedCell;, "TR;"
    move-wide/from16 v18, v13

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/IndexedCell;->minHeight(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 614
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 618
    .end local v17    # "tableCell":Ljavafx/scene/control/IndexedCell;, "TR;"
    :cond_2
    move-wide/from16 v18, v13

    move-wide/from16 v2, v18

    goto :goto_0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 25

    .prologue
    .line 566
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 567
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    move-wide/from16 v18, v0

    move-wide/from16 v2, v18

    .line 591
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :goto_0
    return-wide v2

    .line 571
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->checkState()V

    .line 577
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getCellSize()D

    move-result-wide v18

    const-wide/high16 v20, 0x4038000000000000L    # 24.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1

    .line 578
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getCellSize()D

    move-result-wide v18

    move-wide/from16 v2, v18

    goto :goto_0

    .line 583
    :cond_1
    const-wide/16 v18, 0x0

    move-wide/from16 v13, v18

    .line 584
    .local v13, "prefHeight":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v15, v18

    .line 585
    .local v15, "count":I
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_1
    move/from16 v18, v16

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 586
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move-object/from16 v18, v0

    move/from16 v19, v16

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v17, v18

    .line 587
    .local v17, "tableCell":Ljavafx/scene/control/IndexedCell;, "TR;"
    move-wide/from16 v18, v13

    move-object/from16 v20, v17

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/IndexedCell;->prefHeight(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 585
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 589
    .end local v17    # "tableCell":Ljavafx/scene/control/IndexedCell;, "TR;"
    :cond_2
    move-wide/from16 v18, v13

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getCellSize()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v22

    check-cast v22, Ljavafx/scene/control/IndexedCell;

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/control/IndexedCell;->minHeight(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 591
    .local v16, "ph":D
    move-wide/from16 v18, v16

    move-wide/from16 v2, v18

    goto/16 :goto_0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 23

    .prologue
    .line 555
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-wide/from16 v5, p3

    .local v5, "topInset":D
    move-wide/from16 v7, p5

    .local v7, "rightInset":D
    move-wide/from16 v9, p7

    .local v9, "bottomInset":D
    move-wide/from16 v11, p9

    .local v11, "leftInset":D
    const-wide/16 v18, 0x0

    move-wide/from16 v13, v18

    .line 557
    .local v13, "prefWidth":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v18

    move-object/from16 v15, v18

    .line 558
    .local v15, "visibleLeafColumns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v17, v18

    .local v17, "max":I
    :goto_0
    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 559
    move-wide/from16 v18, v13

    move-object/from16 v20, v15

    move/from16 v21, v16

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/control/TableColumnBase;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/TableColumnBase;->getWidth()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v13, v18

    .line 558
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 562
    :cond_0
    move-wide/from16 v18, v13

    move-wide/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return-wide v2
.end method

.method protected abstract fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
.end method

.method protected abstract getCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/IndexedCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumnBase;",
            ")TR;"
        }
    .end annotation
.end method

.method protected getDisclosureNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return-object v0
.end method

.method protected getIndentationLevel(Ljavafx/scene/control/IndexedCell;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)I"
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/IndexedCell;, "TC;"
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return v0
.end method

.method protected getIndentationPerLevel()D
    .locals 3

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return-wide v0
.end method

.method protected abstract getTableColumnBase(Ljavafx/scene/control/IndexedCell;)Ljavafx/scene/control/TableColumnBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;"
        }
    .end annotation
.end method

.method protected getTreeColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return-object v0
.end method

.method protected abstract getVirtualFlowOwner()Ljavafx/scene/control/Control;
.end method

.method protected getVisibleLeafColumn(I)Ljavafx/scene/control/TableColumnBase;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move v1, p1

    .local v1, "column":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 488
    .local v2, "visibleLeafColumns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 489
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    :cond_1
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableColumnBase;

    move-object v0, v3

    goto :goto_0
.end method

.method protected abstract getVisibleLeafColumns()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljavafx/scene/control/TableColumnBase;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 226
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v2, p1

    .local v2, "p":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 228
    const-string v3, "INDEX"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->requestCellUpdate()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string v3, "FIXED_CELL_SIZE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    .line 238
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected init(Ljavafx/scene/control/IndexedCell;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-object v2, p1

    .local v2, "control":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/IndexedCell;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/IndexedCell;->setPickOnBounds(Z)V

    .line 146
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->recreateCells()V

    .line 147
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCells(Z)V

    .line 153
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->weakVisibleLeafColumnsListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 159
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->itemProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 160
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->indexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v4

    const-string v5, "INDEX"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 162
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 163
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "FIXED_CELL_SIZE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 164
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    .line 165
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    .line 167
    :cond_0
    return-void

    .line 165
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected abstract isColumnPartiallyOrFullyVisible(Ljavafx/scene/control/TableColumnBase;)Z
.end method

.method protected isDisclosureNodeVisible()Z
    .locals 2

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return v0
.end method

.method protected isIndentationRequired()Z
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return v0
.end method

.method protected isShowRoot()Z
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    return v0
.end method

.method protected layoutChildren(DDDD)V
    .locals 55

    .prologue
    .line 243
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->checkState()V

    .line 244
    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v46

    if-eqz v46, :cond_0

    .line 443
    :goto_0
    return-void

    .line 246
    :cond_0
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v46

    move-object/from16 v12, v46

    .line 247
    .local v12, "visibleLeafColumns":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljavafx/scene/control/TableColumnBase;>;"
    move-object/from16 v46, v12

    invoke-interface/range {v46 .. v46}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v46

    if-eqz v46, :cond_1

    .line 248
    move-object/from16 v46, v3

    move-wide/from16 v47, v4

    move-wide/from16 v49, v6

    move-wide/from16 v51, v8

    move-wide/from16 v53, v10

    invoke-super/range {v46 .. v54}, Lcom/sun/javafx/scene/control/skin/CellSkinBase;->layoutChildren(DDDD)V

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v46

    check-cast v46, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v13, v46

    .line 257
    .local v13, "control":Ljavafx/scene/control/IndexedCell;, "TC;"
    const-wide/16 v46, 0x0

    move-wide/from16 v14, v46

    .line 258
    .local v14, "leftMargin":D
    const-wide/16 v46, 0x0

    move-wide/from16 v16, v46

    .line 259
    .local v16, "disclosureWidth":D
    const-wide/16 v46, 0x0

    move-wide/from16 v18, v46

    .line 260
    .local v18, "graphicWidth":D
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isIndentationRequired()Z

    move-result v46

    move/from16 v20, v46

    .line 261
    .local v20, "indentationRequired":Z
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isDisclosureNodeVisible()Z

    move-result v46

    move/from16 v21, v46

    .line 262
    .local v21, "disclosureVisible":Z
    const/16 v46, 0x0

    move/from16 v22, v46

    .line 263
    .local v22, "indentationColumnIndex":I
    const/16 v46, 0x0

    move-object/from16 v23, v46

    .line 264
    .local v23, "disclosureNode":Ljavafx/scene/Node;
    move/from16 v46, v20

    if-eqz v46, :cond_8

    .line 268
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getTreeColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v46

    move-object/from16 v24, v46

    .line 269
    .local v24, "treeColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    move-object/from16 v46, v24

    if-nez v46, :cond_4

    const/16 v46, 0x0

    :goto_1
    move/from16 v22, v46

    .line 270
    move/from16 v46, v22

    if-gez v46, :cond_5

    const/16 v46, 0x0

    :goto_2
    move/from16 v22, v46

    .line 272
    move-object/from16 v46, v3

    move-object/from16 v47, v13

    invoke-virtual/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getIndentationLevel(Ljavafx/scene/control/IndexedCell;)I

    move-result v46

    move/from16 v25, v46

    .line 273
    .local v25, "indentationLevel":I
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isShowRoot()Z

    move-result v46

    if-nez v46, :cond_2

    add-int/lit8 v25, v25, -0x1

    .line 274
    :cond_2
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getIndentationPerLevel()D

    move-result-wide v46

    move-wide/from16 v26, v46

    .line 275
    .local v26, "indentationPerLevel":D
    move/from16 v46, v25

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v26

    mul-double v46, v46, v48

    move-wide/from16 v14, v46

    .line 278
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVirtualFlowOwner()Ljavafx/scene/control/Control;

    move-result-object v46

    move-object/from16 v28, v46

    .line 279
    .local v28, "c":Ljavafx/scene/control/Control;
    sget-object v46, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v47, v28

    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_6

    sget-object v46, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v47, v28

    .line 280
    invoke-interface/range {v46 .. v47}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Double;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v46

    :goto_3
    move-wide/from16 v29, v46

    .line 281
    .local v29, "defaultDisclosureWidth":D
    move-wide/from16 v46, v29

    move-wide/from16 v16, v46

    .line 283
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getDisclosureNode()Ljavafx/scene/Node;

    move-result-object v46

    move-object/from16 v23, v46

    .line 284
    move-object/from16 v46, v23

    if-eqz v46, :cond_8

    .line 285
    move-object/from16 v46, v23

    move/from16 v47, v21

    invoke-virtual/range {v46 .. v47}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 287
    move/from16 v46, v21

    if-eqz v46, :cond_8

    .line 288
    move-object/from16 v46, v23

    move-wide/from16 v47, v10

    invoke-virtual/range {v46 .. v48}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v46

    move-wide/from16 v16, v46

    .line 289
    move-wide/from16 v46, v16

    move-wide/from16 v48, v29

    cmpl-double v46, v46, v48

    if-lez v46, :cond_8

    .line 290
    sget-object v46, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->maxDisclosureWidthMap:Ljava/util/Map;

    move-object/from16 v47, v28

    move-wide/from16 v48, v16

    invoke-static/range {v48 .. v49}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v48

    invoke-interface/range {v46 .. v48}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .line 296
    move-object/from16 v46, v3

    invoke-direct/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVirtualFlow()Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-result-object v46

    move-object/from16 v31, v46

    .line 297
    .local v31, "flow":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TC;>;"
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v46

    check-cast v46, Ljavafx/scene/control/IndexedCell;

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v46

    move/from16 v32, v46

    .line 298
    .local v32, "thisIndex":I
    const/16 v46, 0x0

    move/from16 v33, v46

    .local v33, "i":I
    :goto_4
    move/from16 v46, v33

    move-object/from16 v47, v31

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_8

    .line 299
    move-object/from16 v46, v31

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v46, v0

    move/from16 v47, v33

    invoke-virtual/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v34, v46

    .line 300
    .local v34, "cell":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object/from16 v46, v34

    if-eqz v46, :cond_3

    move-object/from16 v46, v34

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->isEmpty()Z

    move-result v46

    if-eqz v46, :cond_7

    .line 298
    :cond_3
    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .line 269
    .end local v25    # "indentationLevel":I
    .end local v26    # "indentationPerLevel":D
    .end local v28    # "c":Ljavafx/scene/control/Control;
    .end local v29    # "defaultDisclosureWidth":D
    .end local v31    # "flow":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TC;>;"
    .end local v32    # "thisIndex":I
    .end local v33    # "i":I
    .end local v34    # "cell":Ljavafx/scene/control/IndexedCell;, "TC;"
    :cond_4
    move-object/from16 v46, v12

    move-object/from16 v47, v24

    invoke-interface/range {v46 .. v47}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v46

    goto/16 :goto_1

    .line 270
    :cond_5
    move/from16 v46, v22

    goto/16 :goto_2

    .line 280
    .restart local v25    # "indentationLevel":I
    .restart local v26    # "indentationPerLevel":D
    .restart local v28    # "c":Ljavafx/scene/control/Control;
    :cond_6
    const-wide/16 v46, 0x0

    goto/16 :goto_3

    .line 301
    .restart local v29    # "defaultDisclosureWidth":D
    .restart local v31    # "flow":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TC;>;"
    .restart local v32    # "thisIndex":I
    .restart local v33    # "i":I
    .restart local v34    # "cell":Ljavafx/scene/control/IndexedCell;, "TC;"
    :cond_7
    move-object/from16 v46, v34

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->requestLayout()V

    .line 302
    move-object/from16 v46, v34

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->layout()V

    goto :goto_5

    .line 316
    .end local v24    # "treeColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<**>;"
    .end local v25    # "indentationLevel":I
    .end local v26    # "indentationPerLevel":D
    .end local v28    # "c":Ljavafx/scene/control/Control;
    .end local v29    # "defaultDisclosureWidth":D
    .end local v31    # "flow":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TC;>;"
    .end local v32    # "thisIndex":I
    .end local v33    # "i":I
    .end local v34    # "cell":Ljavafx/scene/control/IndexedCell;, "TC;"
    :cond_8
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snappedTopInset()D

    move-result-wide v46

    move-object/from16 v48, v3

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snappedBottomInset()D

    move-result-wide v48

    add-double v46, v46, v48

    move-wide/from16 v28, v46

    .line 317
    .local v28, "verticalPadding":D
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snappedLeftInset()D

    move-result-wide v46

    move-object/from16 v48, v3

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snappedRightInset()D

    move-result-wide v48

    add-double v46, v46, v48

    move-wide/from16 v30, v46

    .line 318
    .local v30, "horizontalPadding":D
    move-object/from16 v46, v13

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->getHeight()D

    move-result-wide v46

    move-wide/from16 v32, v46

    .line 327
    .local v32, "controlHeight":D
    move-object/from16 v46, v13

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v46

    move/from16 v34, v46

    .line 328
    .local v34, "index":I
    move/from16 v46, v34

    if-gez v46, :cond_9

    goto/16 :goto_0

    .line 330
    :cond_9
    const/16 v46, 0x0

    move/from16 v35, v46

    .local v35, "column":I
    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Ljava/util/List;->size()I

    move-result v46

    move/from16 v36, v46

    .local v36, "max":I
    :goto_6
    move/from16 v46, v35

    move/from16 v47, v36

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_17

    .line 331
    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move-object/from16 v46, v0

    move/from16 v47, v35

    invoke-interface/range {v46 .. v47}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v37, v46

    .line 332
    .local v37, "tableCell":Ljavafx/scene/control/IndexedCell;, "TR;"
    move-object/from16 v46, v3

    move-object/from16 v47, v37

    invoke-virtual/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getTableColumnBase(Ljavafx/scene/control/IndexedCell;)Ljavafx/scene/control/TableColumnBase;

    move-result-object v46

    move-object/from16 v38, v46

    .line 334
    .local v38, "tableColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TT;*>;"
    const/16 v46, 0x1

    move/from16 v39, v46

    .line 335
    .local v39, "isVisible":Z
    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    move/from16 v46, v0

    if-eqz v46, :cond_e

    .line 345
    move-object/from16 v46, v3

    move-object/from16 v47, v38

    invoke-virtual/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->isColumnPartiallyOrFullyVisible(Ljavafx/scene/control/TableColumnBase;)Z

    move-result v46

    move/from16 v39, v46

    .line 347
    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSize:D

    move-wide/from16 v46, v0

    move-wide/from16 v26, v46

    .line 353
    .local v26, "height":D
    :goto_7
    move/from16 v46, v39

    if-eqz v46, :cond_15

    .line 354
    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    move/from16 v46, v0

    if-eqz v46, :cond_a

    move-object/from16 v46, v37

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->getParent()Ljavafx/scene/Parent;

    move-result-object v46

    if-nez v46, :cond_a

    .line 355
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v46

    move-object/from16 v47, v37

    invoke-interface/range {v46 .. v47}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v46

    .line 358
    :cond_a
    move-object/from16 v46, v3

    move-object/from16 v47, v37

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v47 .. v49}, Ljavafx/scene/control/IndexedCell;->prefWidth(D)D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snapSize(D)D

    move-result-wide v46

    move-object/from16 v48, v3

    move-wide/from16 v49, v30

    invoke-virtual/range {v48 .. v50}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snapSize(D)D

    move-result-wide v48

    sub-double v46, v46, v48

    move-wide/from16 v24, v46

    .line 367
    .local v24, "width":D
    move-wide/from16 v46, v10

    const-wide/high16 v48, 0x4038000000000000L    # 24.0

    cmpg-double v46, v46, v48

    if-gtz v46, :cond_f

    const/16 v46, 0x1

    :goto_8
    move/from16 v40, v46

    .line 372
    .local v40, "centreContent":Z
    move-object/from16 v46, v37

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v46

    check-cast v46, Ljavafx/css/StyleableObjectProperty;

    invoke-virtual/range {v46 .. v46}, Ljavafx/css/StyleableObjectProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v46

    move-object/from16 v41, v46

    .line 373
    .local v41, "origin":Ljavafx/css/StyleOrigin;
    move/from16 v46, v40

    if-nez v46, :cond_b

    move-object/from16 v46, v41

    if-nez v46, :cond_b

    .line 374
    move-object/from16 v46, v37

    sget-object v47, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual/range {v46 .. v47}, Ljavafx/scene/control/IndexedCell;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 381
    :cond_b
    move/from16 v46, v20

    if-eqz v46, :cond_d

    move/from16 v46, v35

    move/from16 v47, v22

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_d

    .line 382
    move/from16 v46, v21

    if-eqz v46, :cond_c

    .line 383
    move-object/from16 v46, v23

    move-wide/from16 v47, v16

    invoke-virtual/range {v46 .. v48}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v46

    move-wide/from16 v42, v46

    .line 385
    .local v42, "ph":D
    move-wide/from16 v46, v24

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-lez v46, :cond_10

    move-wide/from16 v46, v24

    move-wide/from16 v48, v16

    move-wide/from16 v50, v14

    add-double v48, v48, v50

    cmpg-double v46, v46, v48

    if-gez v46, :cond_10

    .line 386
    move-object/from16 v46, v3

    move-object/from16 v47, v23

    invoke-direct/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fadeOut(Ljavafx/scene/Node;)V

    .line 400
    .end local v42    # "ph":D
    :cond_c
    :goto_9
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v46

    move-object/from16 v42, v46

    .line 401
    .local v42, "graphicProperty":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/Node;>;"
    move-object/from16 v46, v42

    if-nez v46, :cond_12

    const/16 v46, 0x0

    :goto_a
    move-object/from16 v43, v46

    .line 403
    .local v43, "graphic":Ljavafx/scene/Node;
    move-object/from16 v46, v43

    if-eqz v46, :cond_d

    .line 404
    move-object/from16 v46, v43

    const-wide/high16 v47, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v46 .. v48}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v46

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    add-double v46, v46, v48

    move-wide/from16 v18, v46

    .line 405
    move-object/from16 v46, v43

    move-wide/from16 v47, v18

    invoke-virtual/range {v46 .. v48}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v46

    move-wide/from16 v44, v46

    .line 407
    .local v44, "ph":D
    move-wide/from16 v46, v24

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-lez v46, :cond_13

    move-wide/from16 v46, v24

    move-wide/from16 v48, v16

    move-wide/from16 v50, v14

    add-double v48, v48, v50

    move-wide/from16 v50, v18

    add-double v48, v48, v50

    cmpg-double v46, v46, v48

    if-gez v46, :cond_13

    .line 408
    move-object/from16 v46, v3

    move-object/from16 v47, v43

    invoke-direct/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fadeOut(Ljavafx/scene/Node;)V

    .line 424
    .end local v42    # "graphicProperty":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/Node;>;"
    .end local v43    # "graphic":Ljavafx/scene/Node;
    .end local v44    # "ph":D
    :cond_d
    :goto_b
    move-object/from16 v46, v37

    move-wide/from16 v47, v24

    move-wide/from16 v49, v26

    invoke-virtual/range {v46 .. v50}, Ljavafx/scene/control/IndexedCell;->resize(DD)V

    .line 425
    move-object/from16 v46, v37

    move-wide/from16 v47, v4

    move-object/from16 v49, v3

    invoke-virtual/range {v49 .. v49}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snappedTopInset()D

    move-result-wide v49

    invoke-virtual/range {v46 .. v50}, Ljavafx/scene/control/IndexedCell;->relocate(DD)V

    .line 429
    move-object/from16 v46, v37

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/control/IndexedCell;->requestLayout()V

    .line 430
    .line 441
    .end local v40    # "centreContent":Z
    .end local v41    # "origin":Ljavafx/css/StyleOrigin;
    :goto_c
    move-wide/from16 v46, v4

    move-wide/from16 v48, v24

    add-double v46, v46, v48

    move-wide/from16 v4, v46

    .line 330
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_6

    .line 349
    .end local v24    # "width":D
    .end local v26    # "height":D
    :cond_e
    move-wide/from16 v46, v32

    move-object/from16 v48, v37

    const-wide/high16 v49, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v48 .. v50}, Ljavafx/scene/control/IndexedCell;->prefHeight(D)D

    move-result-wide v48

    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->max(DD)D

    move-result-wide v46

    move-wide/from16 v26, v46

    .line 350
    .restart local v26    # "height":D
    move-object/from16 v46, v3

    move-wide/from16 v47, v26

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snapSize(D)D

    move-result-wide v46

    move-object/from16 v48, v3

    move-wide/from16 v49, v28

    invoke-virtual/range {v48 .. v50}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snapSize(D)D

    move-result-wide v48

    sub-double v46, v46, v48

    move-wide/from16 v26, v46

    goto/16 :goto_7

    .line 367
    .restart local v24    # "width":D
    :cond_f
    const/16 v46, 0x0

    goto/16 :goto_8

    .line 388
    .restart local v40    # "centreContent":Z
    .restart local v41    # "origin":Ljavafx/css/StyleOrigin;
    .local v42, "ph":D
    :cond_10
    move-object/from16 v46, v3

    move-object/from16 v47, v23

    invoke-direct/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fadeIn(Ljavafx/scene/Node;)V

    .line 389
    move-object/from16 v46, v23

    move-wide/from16 v47, v16

    move-wide/from16 v49, v42

    invoke-virtual/range {v46 .. v50}, Ljavafx/scene/Node;->resize(DD)V

    .line 391
    move-object/from16 v46, v23

    move-wide/from16 v47, v4

    move-wide/from16 v49, v14

    add-double v47, v47, v49

    move/from16 v49, v40

    if-eqz v49, :cond_11

    move-wide/from16 v49, v10

    const-wide/high16 v51, 0x4000000000000000L    # 2.0

    div-double v49, v49, v51

    move-wide/from16 v51, v42

    const-wide/high16 v53, 0x4000000000000000L    # 2.0

    div-double v51, v51, v53

    sub-double v49, v49, v51

    :goto_d
    invoke-virtual/range {v46 .. v50}, Ljavafx/scene/Node;->relocate(DD)V

    .line 394
    move-object/from16 v46, v23

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/Node;->toFront()V

    goto/16 :goto_9

    .line 391
    :cond_11
    move-wide/from16 v49, v6

    move-object/from16 v51, v37

    .line 393
    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/control/IndexedCell;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v51

    add-double v49, v49, v51

    goto :goto_d

    .line 401
    .local v42, "graphicProperty":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/Node;>;"
    :cond_12
    move-object/from16 v46, v42

    invoke-virtual/range {v46 .. v46}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljavafx/scene/Node;

    goto/16 :goto_a

    .line 410
    .restart local v43    # "graphic":Ljavafx/scene/Node;
    .restart local v44    # "ph":D
    :cond_13
    move-object/from16 v46, v3

    move-object/from16 v47, v43

    invoke-direct/range {v46 .. v47}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fadeIn(Ljavafx/scene/Node;)V

    .line 412
    move-object/from16 v46, v43

    move-wide/from16 v47, v4

    move-wide/from16 v49, v14

    add-double v47, v47, v49

    move-wide/from16 v49, v16

    add-double v47, v47, v49

    move/from16 v49, v40

    if-eqz v49, :cond_14

    move-wide/from16 v49, v10

    const-wide/high16 v51, 0x4000000000000000L    # 2.0

    div-double v49, v49, v51

    move-wide/from16 v51, v44

    const-wide/high16 v53, 0x4000000000000000L    # 2.0

    div-double v51, v51, v53

    sub-double v49, v49, v51

    :goto_e
    invoke-virtual/range {v46 .. v50}, Ljavafx/scene/Node;->relocate(DD)V

    .line 416
    move-object/from16 v46, v43

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/Node;->toFront()V

    goto/16 :goto_b

    .line 412
    :cond_14
    move-wide/from16 v49, v6

    move-object/from16 v51, v37

    .line 414
    invoke-virtual/range {v51 .. v51}, Ljavafx/scene/control/IndexedCell;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v51

    add-double v49, v49, v51

    goto :goto_e

    .line 431
    .end local v24    # "width":D
    .end local v40    # "centreContent":Z
    .end local v41    # "origin":Ljavafx/css/StyleOrigin;
    .end local v42    # "graphicProperty":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/Node;>;"
    .end local v43    # "graphic":Ljavafx/scene/Node;
    .end local v44    # "ph":D
    :cond_15
    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    move/from16 v46, v0

    if-eqz v46, :cond_16

    .line 435
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v46

    move-object/from16 v47, v37

    invoke-interface/range {v46 .. v47}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v46

    .line 438
    :cond_16
    move-object/from16 v46, v3

    move-object/from16 v47, v37

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v47 .. v49}, Ljavafx/scene/control/IndexedCell;->prefWidth(D)D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snapSize(D)D

    move-result-wide v46

    move-object/from16 v48, v3

    move-wide/from16 v49, v30

    invoke-virtual/range {v48 .. v50}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->snapSize(D)D

    move-result-wide v48

    sub-double v46, v46, v48

    move-wide/from16 v24, v46

    .restart local v24    # "width":D
    goto/16 :goto_c

    .line 443
    .end local v24    # "width":D
    .end local v26    # "height":D
    .end local v37    # "tableCell":Ljavafx/scene/control/IndexedCell;, "TR;"
    .end local v38    # "tableColumn":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TT;*>;"
    .end local v39    # "isVisible":Z
    :cond_17
    goto/16 :goto_0
.end method

.method protected abstract updateCell(Ljavafx/scene/control/IndexedCell;Ljavafx/scene/control/IndexedCell;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;)V"
        }
    .end annotation
.end method

.method protected updateCells(Z)V
    .locals 14

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;, "Lcom/sun/javafx/scene/control/skin/TableRowSkinBase<TT;TC;TB;TR;>;"
    move v1, p1

    .local v1, "resetChildren":Z
    move v10, v1

    if-eqz v10, :cond_1

    .line 498
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fullRefreshCounter:I

    if-nez v10, :cond_0

    .line 499
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->recreateCells()V

    .line 501
    :cond_0
    move-object v10, v0

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fullRefreshCounter:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fullRefreshCounter:I

    .line 506
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    move v2, v10

    .line 507
    .local v2, "cellsEmpty":Z
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 509
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/IndexedCell;

    move-object v3, v10

    .line 510
    .local v3, "skinnable":Ljavafx/scene/control/IndexedCell;, "TC;"
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v10

    move v4, v10

    .line 511
    .local v4, "skinnableIndex":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v5, v10

    .line 513
    .local v5, "visibleLeafColumns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase;>;"
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v7, v10

    .local v7, "max":I
    :goto_0
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_4

    .line 514
    move-object v10, v5

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/TableColumnBase;

    move-object v8, v10

    .line 516
    .local v8, "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TT;*>;"
    const/4 v10, 0x0

    move-object v9, v10

    .line 517
    .local v9, "cell":Ljavafx/scene/control/IndexedCell;, "TR;"
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 518
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/Reference;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/IndexedCell;

    move-object v9, v10

    .line 521
    move-object v10, v9

    if-nez v10, :cond_2

    .line 522
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cellsMap:Ljava/util/WeakHashMap;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 526
    :cond_2
    move-object v10, v9

    if-nez v10, :cond_3

    .line 529
    move-object v10, v0

    move-object v11, v8

    invoke-direct {v10, v11}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->createCell(Ljavafx/scene/control/TableColumnBase;)Ljavafx/scene/control/IndexedCell;

    move-result-object v10

    move-object v9, v10

    .line 532
    :cond_3
    move-object v10, v0

    move-object v11, v9

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->updateCell(Ljavafx/scene/control/IndexedCell;Ljavafx/scene/control/IndexedCell;)V

    .line 533
    move-object v10, v9

    move v11, v4

    invoke-virtual {v10, v11}, Ljavafx/scene/control/IndexedCell;->updateIndex(I)V

    .line 534
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 513
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 538
    .end local v8    # "col":Ljavafx/scene/control/TableColumnBase;, "Ljavafx/scene/control/TableColumnBase<TT;*>;"
    .end local v9    # "cell":Ljavafx/scene/control/IndexedCell;, "TR;"
    :cond_4
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->fixedCellSizeEnabled:Z

    if-nez v10, :cond_6

    move v10, v1

    if-nez v10, :cond_5

    move v10, v2

    if-eqz v10, :cond_6

    .line 539
    :cond_5
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/TableRowSkinBase;->cells:Ljava/util/List;

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v10

    .line 541
    :cond_6
    return-void
.end method
