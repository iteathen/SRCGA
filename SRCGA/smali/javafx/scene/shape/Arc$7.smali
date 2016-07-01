.class Ljavafx/scene/shape/Arc$7;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Arc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Arc;->typeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/shape/ArcType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Arc;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Arc;Ljavafx/scene/shape/ArcType;)V
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Arc;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/shape/ArcType;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/shape/Arc$7;->this$0:Ljavafx/scene/shape/Arc;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc$7;->this$0:Ljavafx/scene/shape/Arc;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc$7;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$7;
    const-string v1, "type"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc$7;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc$7;->this$0:Ljavafx/scene/shape/Arc;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Arc;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 353
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc$7;->this$0:Ljavafx/scene/shape/Arc;

    invoke-static {v1}, Ljavafx/scene/shape/Arc;->access$600(Ljavafx/scene/shape/Arc;)V

    .line 354
    return-void
.end method
