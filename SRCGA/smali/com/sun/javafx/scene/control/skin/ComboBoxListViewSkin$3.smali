.class Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;
.super Ljavafx/scene/control/ListView;
.source "ComboBoxListViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->createListView()Ljavafx/scene/control/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/ListView",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V
    .locals 5

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListView;-><init>()V

    .line 437
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "selectFirstRowByDefault"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    return-void
.end method


# virtual methods
.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 441
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    move-wide v2, p1

    .local v2, "width":D
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    return-wide v1
.end method

.method protected computePrefHeight(D)D
    .locals 7

    .prologue
    .line 473
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$300(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 446
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v8

    instance-of v8, v8, Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    if-eqz v8, :cond_3

    .line 447
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    move-object v6, v8

    .line 448
    .local v6, "skin":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<*>;"
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 449
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->updateRowCount()V

    .line 450
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$002(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Z)Z

    move-result v8

    .line 453
    :cond_0
    const/4 v8, -0x1

    move v7, v8

    .line 454
    .local v7, "rowsToMeasure":I
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/scene/control/ComboBox;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/ComboBox;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v8

    const-string v9, "comboBoxRowsToMeasureWidth"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 455
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/scene/control/ComboBox;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/ComboBox;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v8

    const-string v9, "comboBoxRowsToMeasureWidth"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v7, v8

    .line 458
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/scene/control/ComboBox;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/ComboBox;->getWidth()D

    move-result-wide v8

    move-object v10, v6

    move v11, v7

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getMaxCellWidth(I)D

    move-result-wide v10

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    add-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v4, v8

    .line 465
    .end local v6    # "skin":Lcom/sun/javafx/scene/control/skin/ListViewSkin;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin<*>;"
    .end local v7    # "rowsToMeasure":I
    .local v4, "pw":D
    :goto_0
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->getPlaceholder()Ljavafx/scene/Node;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 466
    move-object v8, v1

    move-wide v9, v2

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/ListView;->computePrefWidth(D)D

    move-result-wide v8

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v4, v8

    .line 469
    :cond_2
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    return-wide v1

    .line 460
    .end local v4    # "pw":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;"
    :cond_3
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/scene/control/ComboBox;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/control/ComboBox;->getWidth()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v4, v8

    .restart local v4    # "pw":D
    goto :goto_0
.end method
