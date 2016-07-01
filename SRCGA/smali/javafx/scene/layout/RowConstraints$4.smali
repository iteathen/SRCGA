.class Ljavafx/scene/layout/RowConstraints$4;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "RowConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/RowConstraints;->percentHeightProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/RowConstraints;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/RowConstraints;D)V
    .locals 8

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/RowConstraints;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/layout/RowConstraints$4;->this$0:Ljavafx/scene/layout/RowConstraints;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints$4;->this$0:Ljavafx/scene/layout/RowConstraints;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$4;
    const-string v1, "percentHeight"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints$4;->this$0:Ljavafx/scene/layout/RowConstraints;

    invoke-virtual {v1}, Ljavafx/scene/layout/RowConstraints;->requestLayout()V

    .line 264
    return-void
.end method
