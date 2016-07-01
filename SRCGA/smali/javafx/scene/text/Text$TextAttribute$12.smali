.class Ljavafx/scene/text/Text$TextAttribute$12;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->impl_caretPositionProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/text/Text$TextAttribute;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute;I)V
    .locals 5

    .prologue
    .line 1810
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$12;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/Text$TextAttribute$12;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1811
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$12;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$12;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$12;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1812
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$12;
    const-string v1, "impl_caretPosition"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$12;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 1814
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$12;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$12;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->SELECTION_END:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 1815
    return-void
.end method
