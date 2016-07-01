.class Ljavafx/scene/chart/NumberAxis$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "NumberAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/NumberAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/NumberAxis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/NumberAxis;Z)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/NumberAxis;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/NumberAxis$1;->this$0:Ljavafx/scene/chart/NumberAxis;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis$1;->this$0:Ljavafx/scene/chart/NumberAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$1;
    const-string v1, "forceZeroInRange"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis$1;->this$0:Ljavafx/scene/chart/NumberAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/NumberAxis;->isAutoRanging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis$1;->this$0:Ljavafx/scene/chart/NumberAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/NumberAxis;->requestAxisLayout()V

    .line 78
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis$1;->this$0:Ljavafx/scene/chart/NumberAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/NumberAxis;->invalidateRange()V

    .line 80
    :cond_0
    return-void
.end method
