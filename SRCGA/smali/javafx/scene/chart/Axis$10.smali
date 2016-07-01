.class Ljavafx/scene/chart/Axis$10;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis;D)V
    .locals 8

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$10;, "Ljavafx/scene/chart/Axis$10;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/Axis$10;->this$0:Ljavafx/scene/chart/Axis;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$10;, "Ljavafx/scene/chart/Axis$10;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$10;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$10;, "Ljavafx/scene/chart/Axis$10;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$10;, "Ljavafx/scene/chart/Axis$10;"
    const-string v1, "tickLabelRotation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$10;, "Ljavafx/scene/chart/Axis$10;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$10;, "Ljavafx/scene/chart/Axis$10;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$10;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->isAutoRanging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$10;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->invalidateRange()V

    .line 388
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$10;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 389
    return-void
.end method
