.class Ljavafx/scene/shape/Rectangle$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Rectangle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Rectangle;->yProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Rectangle;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Rectangle;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Rectangle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Rectangle$2;->this$0:Ljavafx/scene/shape/Rectangle;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle$2;->this$0:Ljavafx/scene/shape/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle$2;
    const-string v1, "y"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle$2;->this$0:Ljavafx/scene/shape/Rectangle;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Rectangle;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 189
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle$2;->this$0:Ljavafx/scene/shape/Rectangle;

    invoke-static {v1}, Ljavafx/scene/shape/Rectangle;->access$100(Ljavafx/scene/shape/Rectangle;)V

    .line 190
    return-void
.end method
