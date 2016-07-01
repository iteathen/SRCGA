.class Ljavafx/scene/layout/ColumnConstraints$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "ColumnConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/ColumnConstraints;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/ColumnConstraints;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/ColumnConstraints;D)V
    .locals 8

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/ColumnConstraints;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/layout/ColumnConstraints$3;->this$0:Ljavafx/scene/layout/ColumnConstraints;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints$3;->this$0:Ljavafx/scene/layout/ColumnConstraints;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$3;
    const-string v1, "maxWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints$3;->this$0:Ljavafx/scene/layout/ColumnConstraints;

    invoke-virtual {v1}, Ljavafx/scene/layout/ColumnConstraints;->requestLayout()V

    .line 223
    return-void
.end method
