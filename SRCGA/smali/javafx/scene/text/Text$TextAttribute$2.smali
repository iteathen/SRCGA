.class Ljavafx/scene/text/Text$TextAttribute$2;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->underlineProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/text/Text$TextAttribute;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute;)V
    .locals 4

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$2;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$TextAttribute$2;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableBooleanProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1563
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$2;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 1566
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$2;
    # getter for: Ljavafx/scene/text/Text$StyleableProperties;->UNDERLINE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/text/Text$StyleableProperties;->access$3100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$2;
    const-string v1, "underline"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 1569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$2;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->TEXT_ATTRS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/text/Text;->access$3200(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1570
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$2;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v1

    sget-object v2, Ljavafx/scene/text/TextBoundsType;->VISUAL:Ljavafx/scene/text/TextBoundsType;

    if-ne v1, v2, :cond_0

    .line 1571
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$2;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->impl_geomChanged()V

    .line 1573
    :cond_0
    return-void
.end method
