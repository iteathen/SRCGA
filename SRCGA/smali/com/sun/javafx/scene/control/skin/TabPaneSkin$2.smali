.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
.super Ljavafx/css/StyleableObjectProperty;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object v2, p2

    .local v2, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/TabPane;",
            "Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties;->CLOSE_TAB_ANIMATION:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
    const-string v1, "closeTabAnimation"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$2;
    return-object v0
.end method
