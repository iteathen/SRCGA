.class Ljavafx/scene/layout/Region$6;
.super Ljavafx/beans/property/ReadOnlyDoubleWrapper;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/Region;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/Region;D)V
    .locals 8

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/Region;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/layout/Region$6;->this$0:Ljavafx/scene/layout/Region;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 886
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$6;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$6;
    const-string v1, "width"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$6;->this$0:Ljavafx/scene/layout/Region;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$6;->get()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljavafx/scene/layout/Region;->access$1700(Ljavafx/scene/layout/Region;D)V

    return-void
.end method
