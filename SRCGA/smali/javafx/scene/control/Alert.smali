.class public Ljavafx/scene/control/Alert;
.super Ljavafx/scene/control/Dialog;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/Alert$AlertType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/Dialog",
        "<",
        "Ljavafx/scene/control/ButtonType;",
        ">;"
    }
.end annotation


# instance fields
.field private final alertType:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Alert$AlertType;",
            ">;"
        }
    .end annotation
.end field

.field private final buttonsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            ">;"
        }
    .end annotation
.end field

.field private dialogPaneRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/DialogPane;",
            ">;"
        }
    .end annotation
.end field

.field private hasCustomButtons:Z

.field private hasCustomHeaderText:Z

.field private hasCustomTitle:Z

.field private final headerTextListener:Ljavafx/beans/InvalidationListener;

.field private installingDefaults:Z

.field private final titleListener:Ljavafx/beans/InvalidationListener;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Alert$AlertType;)V
    .locals 6
    .param p1    # Ljavafx/scene/control/Alert$AlertType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "alertType"
        .end annotation
    .end param

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, p1

    .local v1, "alertType":Ljavafx/scene/control/Alert$AlertType;
    move-object v2, v0

    move-object v3, v1

    const-string v4, ""

    const/4 v5, 0x0

    new-array v5, v5, [Ljavafx/scene/control/ButtonType;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/Alert;-><init>(Ljavafx/scene/control/Alert$AlertType;Ljava/lang/String;[Ljavafx/scene/control/ButtonType;)V

    .line 220
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/scene/control/Alert$AlertType;Ljava/lang/String;[Ljavafx/scene/control/ButtonType;)V
    .locals 15
    .param p1    # Ljavafx/scene/control/Alert$AlertType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "alertType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "contentText"
        .end annotation
    .end param

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object/from16 v1, p1

    .local v1, "alertType":Ljavafx/scene/control/Alert$AlertType;
    move-object/from16 v2, p2

    .local v2, "contentText":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "buttons":[Ljavafx/scene/control/ButtonType;
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/control/Dialog;-><init>()V

    .line 175
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Ljavafx/scene/control/Alert;->installingDefaults:Z

    .line 176
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Ljavafx/scene/control/Alert;->hasCustomButtons:Z

    .line 177
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Ljavafx/scene/control/Alert;->hasCustomTitle:Z

    .line 178
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Ljavafx/scene/control/Alert;->hasCustomHeaderText:Z

    .line 180
    move-object v9, v0

    move-object v10, v0

    invoke-static {v10}, Ljavafx/scene/control/Alert$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Alert;)Ljavafx/beans/InvalidationListener;

    move-result-object v10

    iput-object v10, v9, Ljavafx/scene/control/Alert;->headerTextListener:Ljavafx/beans/InvalidationListener;

    .line 184
    move-object v9, v0

    move-object v10, v0

    invoke-static {v10}, Ljavafx/scene/control/Alert$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/Alert;)Ljavafx/beans/InvalidationListener;

    move-result-object v10

    iput-object v10, v9, Ljavafx/scene/control/Alert;->titleListener:Ljavafx/beans/InvalidationListener;

    .line 188
    move-object v9, v0

    move-object v10, v0

    invoke-static {v10}, Ljavafx/scene/control/Alert$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/Alert;)Ljavafx/collections/ListChangeListener;

    move-result-object v10

    iput-object v10, v9, Ljavafx/scene/control/Alert;->buttonsListener:Ljavafx/collections/ListChangeListener;

    .line 282
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/Alert$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljavafx/scene/control/Alert$1;-><init>(Ljavafx/scene/control/Alert;Ljavafx/scene/control/Alert$AlertType;)V

    iput-object v10, v9, Ljavafx/scene/control/Alert;->alertType:Ljavafx/beans/property/ObjectProperty;

    .line 243
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/Alert;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v9

    move-object v4, v9

    .line 244
    .local v4, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v9, v4

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljavafx/scene/control/DialogPane;->setContentText(Ljava/lang/String;)V

    .line 245
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/Alert;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/control/DialogPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v9

    const-string v10, "alert"

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 247
    move-object v9, v0

    new-instance v10, Ljava/lang/ref/WeakReference;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    invoke-direct {v11, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v9, Ljavafx/scene/control/Alert;->dialogPaneRef:Ljava/lang/ref/WeakReference;

    .line 249
    move-object v9, v0

    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v3

    array-length v10, v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Ljavafx/scene/control/Alert;->hasCustomButtons:Z

    .line 250
    move-object v9, v0

    iget-boolean v9, v9, Ljavafx/scene/control/Alert;->hasCustomButtons:Z

    if-eqz v9, :cond_1

    .line 251
    move-object v9, v3

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_1

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 252
    .local v8, "btnType":Ljavafx/scene/control/ButtonType;
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/scene/control/ButtonType;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v8

    aput-object v13, v11, v12

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v9

    .line 251
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 249
    .end local v8    # "btnType":Ljavafx/scene/control/ButtonType;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 256
    :cond_1
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljavafx/scene/control/Alert;->setAlertType(Ljavafx/scene/control/Alert$AlertType;)V

    .line 259
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/Alert;->dialogPaneProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v9

    move-object v10, v0

    invoke-static {v10}, Ljavafx/scene/control/Alert$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/Alert;)Ljavafx/beans/InvalidationListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 260
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/Alert;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/Alert;->titleListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v9, v10}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 261
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/control/Alert;->updateListeners()V

    .line 262
    return-void
.end method

.method static synthetic access$002(Ljavafx/scene/control/Alert;Z)Z
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Alert;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/Alert;->installingDefaults:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/Alert;
    return v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/Alert;)Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Alert;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/Alert;->hasCustomTitle:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Alert;
    return v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/Alert;)Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Alert;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/Alert;->hasCustomHeaderText:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Alert;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/Alert;)Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Alert;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/Alert;->hasCustomButtons:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Alert;
    return v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Alert;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Alert;->lambda$new$592(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/Alert;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Alert;->lambda$new$593(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/Alert;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Alert;->lambda$new$594(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/Alert;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Alert;->lambda$new$595(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$592(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/Alert;->installingDefaults:Z

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/Alert;->hasCustomHeaderText:Z

    .line 182
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$593(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/Alert;->installingDefaults:Z

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/Alert;->hasCustomTitle:Z

    .line 186
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$594(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/Alert;->installingDefaults:Z

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/Alert;->hasCustomButtons:Z

    .line 190
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$595(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Alert;->updateListeners()V

    return-void
.end method

.method private updateListeners()V
    .locals 8

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Alert;->dialogPaneRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/DialogPane;

    move-object v1, v3

    .line 386
    .local v1, "oldPane":Ljavafx/scene/control/DialogPane;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 387
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->headerTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Alert;->headerTextListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 388
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Alert;->buttonsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 396
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Alert;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v3

    move-object v2, v3

    .line 397
    .local v2, "newPane":Ljavafx/scene/control/DialogPane;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 398
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->headerTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Alert;->headerTextListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 399
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Alert;->buttonsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 402
    :cond_1
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/Alert;->dialogPaneRef:Ljava/lang/ref/WeakReference;

    .line 403
    return-void
.end method


# virtual methods
.method public final alertTypeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Alert$AlertType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Alert;->alertType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Alert;
    return-object v0
.end method

.method public final getAlertType()Ljavafx/scene/control/Alert$AlertType;
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Alert;->alertType:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Alert$AlertType;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Alert;
    return-object v0
.end method

.method public final getButtonTypes()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Alert;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Alert;
    return-object v0
.end method

.method public final setAlertType(Ljavafx/scene/control/Alert$AlertType;)V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert;
    move-object v1, p1

    .local v1, "alertType":Ljavafx/scene/control/Alert$AlertType;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Alert;->alertType:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 350
    return-void
.end method
