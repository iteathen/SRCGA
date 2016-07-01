.class Ljavafx/scene/shape/Circle$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Circle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Circle;->centerXProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Circle;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Circle;D)V
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Circle;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/shape/Circle$1;->this$0:Ljavafx/scene/shape/Circle;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Circle$1;->this$0:Ljavafx/scene/shape/Circle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Circle$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle$1;
    const-string v1, "centerX"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Circle$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Circle$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Circle$1;->this$0:Ljavafx/scene/shape/Circle;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Circle;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 137
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Circle$1;->this$0:Ljavafx/scene/shape/Circle;

    invoke-static {v1}, Ljavafx/scene/shape/Circle;->access$000(Ljavafx/scene/shape/Circle;)V

    .line 138
    return-void
.end method
