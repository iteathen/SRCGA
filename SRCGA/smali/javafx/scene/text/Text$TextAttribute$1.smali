.class Ljavafx/scene/text/Text$TextAttribute$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->textOriginProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/VPos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/text/Text$TextAttribute;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute;Ljavafx/geometry/VPos;)V
    .locals 5

    .prologue
    .line 1540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/geometry/VPos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/Text$TextAttribute$1;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$1;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 1544
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$1;
    # getter for: Ljavafx/scene/text/Text$StyleableProperties;->TEXT_ORIGIN:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/text/Text$StyleableProperties;->access$3000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$1;
    const-string v1, "textOrigin"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 1547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute$1;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->impl_geomChanged()V

    .line 1548
    return-void
.end method
