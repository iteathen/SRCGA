.class Ljavafx/scene/chart/ValueAxis$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "ValueAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/ValueAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/ValueAxis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/ValueAxis;D)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$3;, "Ljavafx/scene/chart/ValueAxis$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/ValueAxis;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/ValueAxis$3;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$3;, "Ljavafx/scene/chart/ValueAxis$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$3;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$3;, "Ljavafx/scene/chart/ValueAxis$3;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$3;, "Ljavafx/scene/chart/ValueAxis$3;"
    const-string v1, "upperBound"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$3;, "Ljavafx/scene/chart/ValueAxis$3;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$3;, "Ljavafx/scene/chart/ValueAxis$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$3;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->isAutoRanging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$3;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->invalidateRange()V

    .line 127
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$3;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->requestAxisLayout()V

    .line 129
    :cond_0
    return-void
.end method
