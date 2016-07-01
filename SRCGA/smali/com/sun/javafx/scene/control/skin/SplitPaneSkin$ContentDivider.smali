.class Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
.super Ljavafx/scene/layout/StackPane;
.source "SplitPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentDivider"
.end annotation


# instance fields
.field private d:Ljavafx/scene/control/SplitPane$Divider;

.field private dividerPos:D

.field private grabber:Ljavafx/scene/layout/StackPane;

.field private initialPos:D

.field private listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private posExplicit:Z

.field private pressPos:D

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Ljavafx/scene/control/SplitPane$Divider;)V
    .locals 9

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
    move-object v2, p2

    .local v2, "d":Ljavafx/scene/control/SplitPane$Divider;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 945
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "split-pane-divider"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 947
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->d:Ljavafx/scene/control/SplitPane$Divider;

    .line 948
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->initialPos:D

    .line 949
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->dividerPos:D

    .line 950
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->pressPos:D

    .line 952
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;-><init>(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    .line 977
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;->access$300(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setGrabberStyle(Z)V

    .line 978
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 981
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Z
    .locals 2

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->posExplicit:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return v0
.end method

.method static synthetic access$102(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Z)Z
    .locals 7

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->posExplicit:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;)Ljavafx/scene/control/SplitPane$Divider;
    .locals 2

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->d:Ljavafx/scene/control/SplitPane$Divider;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-object v0
.end method


# virtual methods
.method protected computeMaxHeight(D)D
    .locals 7

    .prologue
    .line 1067
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->computePrefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method protected computeMaxWidth(D)D
    .locals 7

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->computePrefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 1051
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->computePrefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method protected computeMinWidth(D)D
    .locals 7

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->computePrefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 9

    .prologue
    .line 1059
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->snappedTopInset()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 9

    .prologue
    .line 1055
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->snappedLeftInset()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->snappedRightInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v1
.end method

.method public getDivider()Ljavafx/scene/control/SplitPane$Divider;
    .locals 2

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->d:Ljavafx/scene/control/SplitPane$Divider;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-object v0
.end method

.method public getDividerPos()D
    .locals 3

    .prologue
    .line 1006
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->dividerPos:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method public getInitialPos()D
    .locals 3

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->initialPos:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method public getPosPropertyListener()Ljavafx/beans/value/ChangeListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->listener:Ljavafx/beans/value/ChangeListener;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-object v0
.end method

.method public getPressPos()D
    .locals 3

    .prologue
    .line 1014
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->pressPos:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method public getX()D
    .locals 3

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method public getY()D
    .locals 3

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->y:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    return-wide v0
.end method

.method protected layoutChildren()V
    .locals 24

    .prologue
    .line 1071
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v10

    move-wide v2, v10

    .line 1072
    .local v2, "grabberWidth":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v10

    move-wide v4, v10

    .line 1073
    .local v4, "grabberHeight":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getWidth()D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 1074
    .local v6, "grabberX":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->getHeight()D

    move-result-wide v10

    move-wide v12, v4

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 1075
    .local v8, "grabberY":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    move-wide v11, v2

    move-wide v13, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1076
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    move-wide v12, v6

    move-wide v14, v8

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    sget-object v22, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v23, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v10 .. v23}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1078
    return-void
.end method

.method public setDividerPos(D)V
    .locals 7

    .prologue
    .line 1010
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "dividerPos":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->dividerPos:D

    .line 1011
    return-void
.end method

.method public final setGrabberStyle(Z)V
    .locals 8

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move v1, p1

    .local v1, "horizontal":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 989
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "vertical-grabber"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 990
    move-object v2, v0

    sget-object v3, Ljavafx/scene/Cursor;->V_RESIZE:Ljavafx/scene/Cursor;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setCursor(Ljavafx/scene/Cursor;)V

    .line 991
    move v2, v1

    if-eqz v2, :cond_0

    .line 992
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->grabber:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "horizontal-grabber"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 993
    move-object v2, v0

    sget-object v3, Ljavafx/scene/Cursor;->H_RESIZE:Ljavafx/scene/Cursor;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->setCursor(Ljavafx/scene/Cursor;)V

    .line 995
    :cond_0
    return-void
.end method

.method public setInitialPos(D)V
    .locals 7

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "initialPos":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->initialPos:D

    .line 1003
    return-void
.end method

.method public setPosPropertyListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->listener:Ljavafx/beans/value/ChangeListener;

    .line 1044
    return-void
.end method

.method public setPressPos(D)V
    .locals 7

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "pressPos":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->pressPos:D

    .line 1019
    return-void
.end method

.method public setX(D)V
    .locals 7

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->x:D

    .line 1028
    return-void
.end method

.method public setY(D)V
    .locals 7

    .prologue
    .line 1035
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-wide v1, p1

    .local v1, "y":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;->y:D

    .line 1036
    return-void
.end method
