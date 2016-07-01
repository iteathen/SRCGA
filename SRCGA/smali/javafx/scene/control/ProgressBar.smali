.class public Ljavafx/scene/control/ProgressBar;
.super Ljavafx/scene/control/ProgressIndicator;
.source "ProgressBar.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "progress-bar"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressBar;
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ProgressBar;-><init>(D)V

    .line 74
    return-void
.end method

.method public constructor <init>(D)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressBar;
    move-wide v1, p1

    .local v1, "progress":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ProgressIndicator;-><init>()V

    .line 84
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressBar;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    check-cast v3, Ljavafx/css/StyleableProperty;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 85
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ProgressBar;->setProgress(D)V

    .line 86
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressBar;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "progress-bar"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 87
    return-void
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
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressBar;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;-><init>(Ljavafx/scene/control/ProgressBar;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressBar;
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressBar;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressBar;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressBar;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ProgressBar$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 137
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ProgressIndicator;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ProgressBar;
    :goto_0
    return-object v0

    .line 136
    .restart local v0    # "this":Ljavafx/scene/control/ProgressBar;
    :pswitch_0
    sget-object v3, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object v0, v3

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
