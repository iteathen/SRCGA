.class public Ljavafx/scene/control/TextField;
.super Ljavafx/scene/control/TextInputControl;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TextField$StyleableProperties;,
        Ljavafx/scene/control/TextField$TextFieldContent;
    }
.end annotation


# static fields
.field public static final DEFAULT_PREF_COLUMN_COUNT:I = 0xc


# instance fields
.field private alignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private onAction:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private prefColumnCount:Ljavafx/beans/property/IntegerProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    const-string v2, ""

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextField;-><init>(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextField$TextFieldContent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TextField$TextFieldContent;-><init>(Ljavafx/scene/control/TextField$1;)V

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputControl;-><init>(Ljavafx/scene/control/TextInputControl$Content;)V

    .line 172
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextField$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/16 v6, 0xc

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TextField$1;-><init>(Ljavafx/scene/control/TextField;I)V

    iput-object v3, v2, Ljavafx/scene/control/TextField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    .line 214
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextField$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/TextField$2;-><init>(Ljavafx/scene/control/TextField;)V

    iput-object v3, v2, Ljavafx/scene/control/TextField;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 149
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "text-field"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 150
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->TEXT_FIELD:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextField;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 151
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/control/TextField;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextField;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextField;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/control/TextField;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextField;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextField;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/control/TextField;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextField;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextField;
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
    .line 327
    # getter for: Ljavafx/scene/control/TextField$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TextField$StyleableProperties;->access$700()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final alignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 241
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TextField$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TextField$3;-><init>(Ljavafx/scene/control/TextField;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/control/TextField;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 256
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0
.end method

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
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TextField;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getCharacters()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->getContent()Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextField$TextFieldContent;

    invoke-static {v1}, Ljavafx/scene/control/TextField$TextFieldContent;->access$100(Ljavafx/scene/control/TextField$TextFieldContent;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0
.end method

.method public getControlCssMetaData()Ljava/util/List;
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

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    invoke-static {}, Ljavafx/scene/control/TextField;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0
.end method

.method public final getOnAction()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0
.end method

.method public final getPrefColumnCount()I
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return v0
.end method

.method public final onActionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0
.end method

.method public final prefColumnCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField;
    return-object v0
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnAction(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefColumnCount(I)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method
