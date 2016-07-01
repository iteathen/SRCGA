.class Ljavafx/scene/control/Labeled$5;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Labeled;->wrapTextProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Labeled;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Labeled;)V
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Labeled;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Labeled$5;->this$0:Ljavafx/scene/control/Labeled;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableBooleanProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$5;->this$0:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$5;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Labeled;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$5;
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->WRAP_TEXT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$5;
    const-string v1, "wrapText"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$5;
    return-object v0
.end method
