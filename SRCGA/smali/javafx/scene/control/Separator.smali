.class public Ljavafx/scene/control/Separator;
.super Ljavafx/scene/control/Control;
.source "Separator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/Separator$StyleableProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "separator"

.field private static final HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private halignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/HPos;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private valignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    const-string v0, "vertical"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Separator;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 326
    const-string v0, "horizontal"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Separator;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v1, v2}, Ljavafx/scene/control/Separator;-><init>(Ljavafx/geometry/Orientation;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljavafx/geometry/Orientation;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 121
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Separator$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/Separator$1;-><init>(Ljavafx/scene/control/Separator;Ljavafx/geometry/Orientation;)V

    iput-object v3, v2, Ljavafx/scene/control/Separator;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 95
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Separator;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "separator"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 101
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Separator;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 104
    move-object v2, v0

    sget-object v3, Ljavafx/scene/control/Separator;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v4, v1

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Separator;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 105
    move-object v2, v0

    sget-object v3, Ljavafx/scene/control/Separator;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v4, v1

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Separator;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 107
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Separator;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    .line 108
    :goto_2
    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 109
    return-void

    .line 104
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 105
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 107
    :cond_2
    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    goto :goto_2
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Ljavafx/scene/control/Separator;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Ljavafx/scene/control/Separator;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/Separator;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/control/Separator;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->halignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/Separator;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->valignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 311
    # getter for: Ljavafx/scene/control/Separator$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/Separator$StyleableProperties;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SeparatorSkin;-><init>(Ljavafx/scene/control/Separator;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method protected getControlCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    invoke-static {}, Ljavafx/scene/control/Separator;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method public final getHalignment()Ljavafx/geometry/HPos;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->halignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Separator;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->halignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/HPos;

    goto :goto_0
.end method

.method public final getOrientation()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method public final getValignment()Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->valignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Separator;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->valignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/VPos;

    goto :goto_0
.end method

.method public final halignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/HPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->halignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 166
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Separator$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Separator$2;-><init>(Ljavafx/scene/control/Separator;Ljavafx/geometry/HPos;)V

    iput-object v2, v1, Ljavafx/scene/control/Separator;->halignment:Ljavafx/beans/property/ObjectProperty;

    .line 185
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->halignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0
.end method

.method public final setHalignment(Ljavafx/geometry/HPos;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/HPos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Separator;->halignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public final setOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Orientation;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Separator;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValignment(Ljavafx/geometry/VPos;)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/VPos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Separator;->valignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public final valignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->valignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 204
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Separator$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Separator$3;-><init>(Ljavafx/scene/control/Separator;Ljavafx/geometry/VPos;)V

    iput-object v2, v1, Ljavafx/scene/control/Separator;->valignment:Ljavafx/beans/property/ObjectProperty;

    .line 223
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator;->valignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator;
    return-object v0
.end method
