.class Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
.super Ljavafx/scene/control/TreeCell;
.source "TreeViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TreeViewSkin;->createDefaultCellImpl()Ljavafx/scene/control/TreeCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/TreeCell",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private hbox:Ljavafx/scene/layout/HBox;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TreeViewSkin;

.field private treeItemGraphicListener:Ljavafx/beans/InvalidationListener;

.field private treeItemListener:Ljavafx/beans/InvalidationListener;

.field private treeItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

.field private weakTreeItemListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TreeViewSkin;)V
    .locals 7

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TreeViewSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TreeViewSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeCell;-><init>()V

    .line 275
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->treeItemGraphicListener:Ljavafx/beans/InvalidationListener;

    .line 279
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;-><init>(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->treeItemListener:Ljavafx/beans/InvalidationListener;

    .line 294
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->treeItemGraphicListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

    .line 297
    move-object v2, v0

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->treeItemListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->weakTreeItemListener:Ljavafx/beans/WeakInvalidationListener;

    .line 301
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->treeItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->weakTreeItemListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 303
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 306
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->treeItemRef:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
    return-object v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 7

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->treeItemRef:Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->weakTreeItemGraphicListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->lambda$$547(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$$547(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->getItem()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->isEmpty()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->updateDisplay(Ljava/lang/Object;Z)V

    .line 277
    return-void
.end method

.method private updateDisplay(Ljava/lang/Object;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v5, v1

    if-eqz v5, :cond_0

    move v5, v2

    if-eqz v5, :cond_1

    .line 310
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->hbox:Ljavafx/scene/layout/HBox;

    .line 311
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setText(Ljava/lang/String;)V

    .line 312
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setGraphic(Ljavafx/scene/Node;)V

    .line 345
    :goto_0
    return-void

    .line 315
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v5

    move-object v3, v5

    .line 316
    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v5, v3

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    move-object v4, v5

    .line 317
    .local v4, "graphic":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_5

    .line 318
    move-object v5, v1

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_4

    .line 319
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setText(Ljava/lang/String;)V

    .line 324
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->hbox:Ljavafx/scene/layout/HBox;

    if-nez v5, :cond_2

    .line 325
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/HBox;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-direct {v7, v8, v9}, Ljavafx/scene/layout/HBox;-><init>(D)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->hbox:Ljavafx/scene/layout/HBox;

    .line 327
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->hbox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v4

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    check-cast v9, Ljavafx/scene/Node;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 328
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->hbox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 316
    .end local v4    # "graphic":Ljavafx/scene/Node;
    :cond_3
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v5

    goto :goto_1

    .line 330
    .restart local v4    # "graphic":Ljavafx/scene/Node;
    :cond_4
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->hbox:Ljavafx/scene/layout/HBox;

    .line 331
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setText(Ljava/lang/String;)V

    .line 332
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 335
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->hbox:Ljavafx/scene/layout/HBox;

    .line 336
    move-object v5, v1

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_6

    .line 337
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setText(Ljava/lang/String;)V

    .line 338
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 340
    :cond_6
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setText(Ljava/lang/String;)V

    .line 341
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->setGraphic(Ljavafx/scene/Node;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public updateItem(Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 349
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->updateDisplay(Ljava/lang/Object;Z)V

    .line 350
    return-void
.end method
