.class final Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
.super Ljava/lang/Object;
.source "Hueristic2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/traversal/Hueristic2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TargetNode"
.end annotation


# instance fields
.field averageDistance:D

.field biasShortestDistance:D

.field biased2DMetric:D

.field bottomCornerDistance:D

.field bounds:Ljavafx/geometry/Bounds;

.field current2DMetric:D

.field leftCornerDistance:D

.field node:Ljavafx/scene/Node;

.field originLeftCornerDistance:D

.field originTopCornerDistance:D

.field rightCornerDistance:D

.field shortestDistance:D

.field topCornerDistance:D


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 847
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    .line 848
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    .line 849
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    .line 850
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    .line 852
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    .line 853
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    .line 854
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    .line 855
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    .line 857
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    .line 858
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    .line 859
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    .line 861
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    .line 862
    move-object v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    return-void
.end method


# virtual methods
.method copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V
    .locals 6

    .prologue
    .line 865
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    move-object v2, p1

    .local v2, "source":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    .line 866
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    .line 867
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    .line 868
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    .line 870
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    .line 871
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    .line 873
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    .line 874
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    .line 875
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    .line 877
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    .line 878
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    .line 879
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    .line 880
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    iput-wide v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    .line 881
    return-void
.end method
