.class Ljavafx/scene/control/ScrollPane$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ScrollPane;->hbarPolicyProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ScrollPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ScrollPane;Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ScrollPane;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ScrollPane$1;->this$0:Ljavafx/scene/control/ScrollPane;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane$1;->this$0:Ljavafx/scene/control/ScrollPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollPane;",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$1;
    # getter for: Ljavafx/scene/control/ScrollPane$StyleableProperties;->HBAR_POLICY:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/ScrollPane$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$1;
    const-string v1, "hbarPolicy"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane$1;
    return-object v0
.end method
