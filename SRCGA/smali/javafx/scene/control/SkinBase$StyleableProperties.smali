.class Ljavafx/scene/control/SkinBase$StyleableProperties;
.super Ljava/lang/Object;
.source "SkinBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SkinBase;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Ljavafx/scene/control/Control;->getClassCssMetaData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/SkinBase$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 729
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SkinBase$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Ljavafx/scene/control/SkinBase$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
