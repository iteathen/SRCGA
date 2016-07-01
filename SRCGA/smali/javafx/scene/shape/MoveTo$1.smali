.class Ljavafx/scene/shape/MoveTo$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "MoveTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/MoveTo;->xProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/MoveTo;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/MoveTo;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MoveTo$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/MoveTo;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/MoveTo$1;->this$0:Ljavafx/scene/shape/MoveTo;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MoveTo$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/MoveTo$1;->this$0:Ljavafx/scene/shape/MoveTo;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/MoveTo$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MoveTo$1;
    const-string v1, "x"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/MoveTo$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MoveTo$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/MoveTo$1;->this$0:Ljavafx/scene/shape/MoveTo;

    invoke-virtual {v1}, Ljavafx/scene/shape/MoveTo;->u()V

    .line 94
    return-void
.end method
