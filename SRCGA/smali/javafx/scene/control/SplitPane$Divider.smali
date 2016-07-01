.class public Ljavafx/scene/control/SplitPane$Divider;
.super Ljava/lang/Object;
.source "SplitPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SplitPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Divider"
.end annotation


# instance fields
.field private position:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane$Divider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 485
    return-void
.end method


# virtual methods
.method public final getPosition()D
    .locals 4

    .prologue
    .line 506
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SplitPane$Divider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/SplitPane$Divider;->position:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/SplitPane$Divider;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/SplitPane$Divider;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/SplitPane$Divider;->position:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final positionProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane$Divider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane$Divider;->position:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 511
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "position"

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/control/SplitPane$Divider;->position:Ljavafx/beans/property/DoubleProperty;

    .line 521
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane$Divider;->position:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane$Divider;
    return-object v0
.end method

.method public final setPosition(D)V
    .locals 7

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane$Divider;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SplitPane$Divider;->positionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 503
    return-void
.end method
