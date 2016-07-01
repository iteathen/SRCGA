.class Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
.super Ljavafx/scene/layout/StackPane;
.source "SplitPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;-><init>(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;Ljavafx/scene/control/SplitPane$Divider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;)V
    .locals 5

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->this$1:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->val$this$0:Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeMaxHeight(D)D
    .locals 7

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->computePrefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    return-wide v0
.end method

.method protected computeMaxWidth(D)D
    .locals 7

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->computePrefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    return-wide v0
.end method

.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 958
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    move-wide v2, p1

    .local v2, "width":D
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    return-wide v1
.end method

.method protected computeMinWidth(D)D
    .locals 7

    .prologue
    .line 954
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    move-wide v2, p1

    .local v2, "height":D
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    return-wide v1
.end method

.method protected computePrefHeight(D)D
    .locals 9

    .prologue
    .line 966
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->snappedTopInset()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 9

    .prologue
    .line 962
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->snappedLeftInset()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;->snappedRightInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$ContentDivider$1;
    return-wide v1
.end method
