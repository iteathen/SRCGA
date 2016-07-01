.class Ljavafx/scene/shape/Shape$4;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape;->smoothProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Shape;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape;Z)V
    .locals 5

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Shape;
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/shape/Shape$4;->this$0:Ljavafx/scene/shape/Shape;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$4;->this$0:Ljavafx/scene/shape/Shape;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$4;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/shape/Shape;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$4;
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->SMOOTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$4;
    const-string v1, "smooth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$4;->this$0:Ljavafx/scene/shape/Shape;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Shape;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 523
    return-void
.end method
