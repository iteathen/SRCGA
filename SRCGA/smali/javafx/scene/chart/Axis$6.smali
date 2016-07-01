.class Ljavafx/scene/chart/Axis$6;
.super Ljavafx/beans/property/BooleanPropertyBase;
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
.method constructor <init>(Ljavafx/scene/chart/Axis;Z)V
    .locals 5

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$6;, "Ljavafx/scene/chart/Axis$6;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Axis$6;->this$0:Ljavafx/scene/chart/Axis;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$6;, "Ljavafx/scene/chart/Axis$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$6;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$6;, "Ljavafx/scene/chart/Axis$6;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$6;, "Ljavafx/scene/chart/Axis$6;"
    const-string v1, "autoRanging"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$6;, "Ljavafx/scene/chart/Axis$6;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$6;, "Ljavafx/scene/chart/Axis$6;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis$6;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$6;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 267
    :cond_0
    return-void
.end method
