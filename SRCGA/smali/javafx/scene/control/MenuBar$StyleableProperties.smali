.class Ljavafx/scene/control/MenuBar$StyleableProperties;
.super Ljava/lang/Object;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/MenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final STYLEABLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final USE_SYSTEM_MENU_BAR:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/MenuBar;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 197
    new-instance v1, Ljavafx/scene/control/MenuBar$StyleableProperties$1;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "-fx-use-system-menu-bar"

    .line 199
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    const/4 v5, 0x0

    .line 200
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/MenuBar$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Ljavafx/scene/control/MenuBar$StyleableProperties;->USE_SYSTEM_MENU_BAR:Ljavafx/css/CssMetaData;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    .line 213
    invoke-static {}, Ljavafx/scene/control/Control;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 214
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/MenuBar$StyleableProperties;->USE_SYSTEM_MENU_BAR:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 215
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/control/MenuBar$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 216
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Ljavafx/scene/control/MenuBar$StyleableProperties;->USE_SYSTEM_MENU_BAR:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Ljavafx/scene/control/MenuBar$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
