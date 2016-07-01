.class Ljavafx/scene/text/Text$TextAttribute$8;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->impl_selectionFillProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/text/Text$TextAttribute;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute;Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 1711
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$8;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/paint/Paint;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/Text$TextAttribute$8;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1712
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$8;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$8;
    const-string v1, "impl_selectionFill"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$8;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 1715
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$8;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->TEXT_SELECTION:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/text/Text;->access$4100(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1716
    return-void
.end method
