.class Ljavafx/scene/layout/RowConstraints$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "RowConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/RowConstraints;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/RowConstraints;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/layout/RowConstraints$2;->this$0:Ljavafx/scene/layout/RowConstraints;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints$2;->this$0:Ljavafx/scene/layout/RowConstraints;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$2;
    const-string v1, "prefHeight"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints$2;->this$0:Ljavafx/scene/layout/RowConstraints;

    invoke-virtual {v1}, Ljavafx/scene/layout/RowConstraints;->requestLayout()V

    .line 183
    return-void
.end method
