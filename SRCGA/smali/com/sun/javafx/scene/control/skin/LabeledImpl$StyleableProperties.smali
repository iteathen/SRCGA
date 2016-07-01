.class final Lcom/sun/javafx/scene/control/skin/LabeledImpl$StyleableProperties;
.super Ljava/lang/Object;
.source "LabeledImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/LabeledImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StyleableProperties"
.end annotation


# static fields
.field static final STYLEABLES_TO_MIRROR:Ljava/util/List;
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
    .locals 7

    .prologue
    .line 144
    invoke-static {}, Ljavafx/scene/control/Labeled;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 145
    .local v0, "labeledStyleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    invoke-static {}, Ljavafx/scene/layout/Region;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 146
    .local v1, "parentStyleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 148
    .local v2, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    .line 149
    move-object v3, v2

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/sun/javafx/scene/control/skin/LabeledImpl$StyleableProperties;->STYLEABLES_TO_MIRROR:Ljava/util/List;

    .line 150
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledImpl$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
