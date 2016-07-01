.class public Ljavafx/scene/control/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/event/EventTarget;"
    }
.end annotation


# static fields
.field private static final HEADER_PSEUDO_CLASS:Ljavafx/css/PseudoClass;

.field private static final NO_HEADER_PSEUDO_CLASS:Ljavafx/css/PseudoClass;


# instance fields
.field final dialog:Ljavafx/scene/control/FXDialog;

.field private dialogPane:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/DialogPane;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

.field private isClosing:Z

.field private onCloseRequest:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHidden:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHiding:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShowing:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShown:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resultConverterProperty:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final resultProperty:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1048
    const-string v0, "header"

    .line 1049
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Dialog;->HEADER_PSEUDO_CLASS:Ljavafx/css/PseudoClass;

    .line 1050
    const-string v0, "no-header"

    .line 1051
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Dialog;->NO_HEADER_PSEUDO_CLASS:Ljavafx/css/PseudoClass;

    .line 1050
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 506
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Dialog$1;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    move-object v5, v0

    const-string v6, "dialogPane"

    new-instance v7, Ljavafx/scene/control/DialogPane;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljavafx/scene/control/DialogPane;-><init>()V

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/Dialog$1;-><init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;Ljavafx/scene/control/DialogPane;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->dialogPane:Ljavafx/beans/property/ObjectProperty;

    .line 657
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Dialog$2;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Dialog$2;-><init>(Ljavafx/scene/control/Dialog;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->resultProperty:Ljavafx/beans/property/ObjectProperty;

    .line 684
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "resultConverter"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->resultConverterProperty:Ljavafx/beans/property/ObjectProperty;

    .line 869
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/event/EventHandlerManager;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/EventHandlerManager;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    .line 263
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/HeavyweightDialog;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/HeavyweightDialog;-><init>(Ljavafx/scene/control/Dialog;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    .line 264
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-direct {v3}, Ljavafx/scene/control/DialogPane;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Dialog;->setDialogPane(Ljavafx/scene/control/DialogPane;)V

    .line 265
    move-object v1, v0

    sget-object v2, Ljavafx/stage/Modality;->APPLICATION_MODAL:Ljavafx/stage/Modality;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Dialog;->initModality(Ljavafx/stage/Modality;)V

    .line 266
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Dialog;)V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Dialog;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Dialog;->updatePseudoClassState()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/Dialog;)Lcom/sun/javafx/event/EventHandlerManager;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Dialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Dialog;
    return-object v0
.end method

.method private updatePseudoClassState()V
    .locals 6

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v3

    move-object v1, v3

    .line 1055
    .local v1, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1056
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v3

    move v2, v3

    .line 1057
    .local v2, "hasHeader":Z
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/Dialog;->HEADER_PSEUDO_CLASS:Ljavafx/css/PseudoClass;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/DialogPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1058
    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/Dialog;->NO_HEADER_PSEUDO_CLASS:Ljavafx/css/PseudoClass;

    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/DialogPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1060
    .end local v2    # "hasHeader":Z
    :cond_0
    return-void

    .line 1058
    .restart local v2    # "hasHeader":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    invoke-interface {v2, v3}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final close()V
    .locals 12

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/scene/control/Dialog;->isClosing:Z

    if-eqz v6, :cond_0

    .line 416
    :goto_0
    return-void

    .line 351
    :cond_0
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/control/Dialog;->isClosing:Z

    .line 353
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Dialog;->getResult()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 358
    .local v1, "result":Ljava/lang/Object;, "TR;"
    move-object v6, v1

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/FXDialog;->requestPermissionToClose(Ljavafx/scene/control/Dialog;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 359
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/control/Dialog;->isClosing:Z

    .line 360
    goto :goto_0

    .line 378
    :cond_1
    move-object v6, v1

    if-nez v6, :cond_4

    .line 379
    const/4 v6, 0x0

    move-object v2, v6

    .line 385
    .local v2, "cancelButton":Ljavafx/scene/control/ButtonType;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ButtonType;

    move-object v4, v6

    .line 386
    .local v4, "button":Ljavafx/scene/control/ButtonType;
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/ButtonType;->getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v6

    move-object v5, v6

    .line 387
    .local v5, "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v6, v5

    if-nez v6, :cond_2

    goto :goto_1

    .line 389
    :cond_2
    move-object v6, v5

    sget-object v7, Ljavafx/scene/control/ButtonBar$ButtonData;->CANCEL_CLOSE:Ljavafx/scene/control/ButtonBar$ButtonData;

    if-ne v6, v7, :cond_5

    .line 390
    move-object v6, v4

    move-object v2, v6

    .line 398
    .end local v4    # "button":Ljavafx/scene/control/ButtonType;
    .end local v5    # "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_3
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/Dialog;->impl_setResultAndClose(Ljavafx/scene/control/ButtonType;Z)V

    .line 402
    .end local v2    # "cancelButton":Ljavafx/scene/control/ButtonType;
    :cond_4
    move-object v6, v0

    new-instance v7, Ljavafx/scene/control/DialogEvent;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    sget-object v10, Ljavafx/scene/control/DialogEvent;->DIALOG_HIDING:Ljavafx/event/EventType;

    invoke-direct {v8, v9, v10}, Ljavafx/scene/control/DialogEvent;-><init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V

    invoke-static {v6, v7}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 404
    new-instance v6, Ljavafx/scene/control/DialogEvent;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    sget-object v9, Ljavafx/scene/control/DialogEvent;->DIALOG_CLOSE_REQUEST:Ljavafx/event/EventType;

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/DialogEvent;-><init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V

    move-object v2, v6

    .line 405
    .local v2, "closeRequestEvent":Ljavafx/scene/control/DialogEvent;
    move-object v6, v0

    move-object v7, v2

    invoke-static {v6, v7}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 406
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/DialogEvent;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 407
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/control/Dialog;->isClosing:Z

    .line 408
    goto/16 :goto_0

    .line 393
    .local v2, "cancelButton":Ljavafx/scene/control/ButtonType;
    .restart local v4    # "button":Ljavafx/scene/control/ButtonType;
    .restart local v5    # "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_5
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/ButtonBar$ButtonData;->isCancelButton()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 394
    move-object v6, v4

    move-object v2, v6

    .line 396
    :cond_6
    goto :goto_1

    .line 411
    .end local v4    # "button":Ljavafx/scene/control/ButtonType;
    .end local v5    # "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    .local v2, "closeRequestEvent":Ljavafx/scene/control/DialogEvent;
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v6}, Ljavafx/scene/control/FXDialog;->close()V

    .line 413
    move-object v6, v0

    new-instance v7, Ljavafx/scene/control/DialogEvent;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    sget-object v10, Ljavafx/scene/control/DialogEvent;->DIALOG_HIDDEN:Ljavafx/event/EventType;

    invoke-direct {v8, v9, v10}, Ljavafx/scene/control/DialogEvent;-><init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V

    invoke-static {v6, v7}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 415
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/control/Dialog;->isClosing:Z

    .line 416
    goto/16 :goto_0
.end method

.method public final contentTextProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->contentTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final dialogPaneProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/DialogPane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialogPane:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getContentText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getContentText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getDialogPane()Ljavafx/scene/control/DialogPane;
    .locals 2

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialogPane:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/DialogPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getGraphic()Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getHeaderText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-wide v0
.end method

.method public final getModality()Ljavafx/stage/Modality;
    .locals 2

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->getModality()Ljavafx/stage/Modality;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getOnCloseRequest()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 965
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getOnHidden()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 942
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHidden:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHidden:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnHiding()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHiding:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHiding:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnShowing()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShowing:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShowing:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnShown()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShown:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShown:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOwner()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->getOwner()Ljavafx/stage/Window;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->resultProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getResultConverter()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->resultConverterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-wide v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->getX()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->getY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-wide v0
.end method

.method public final graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final headerTextProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->headerTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final hide()V
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->close()V

    .line 423
    return-void
.end method

.method impl_setResultAndClose(Ljavafx/scene/control/ButtonType;Z)V
    .locals 8

    .prologue
    .line 992
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "cmd":Ljavafx/scene/control/ButtonType;
    move v2, p2

    .local v2, "close":Z
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Dialog;->getResultConverter()Ljavafx/util/Callback;

    move-result-object v6

    move-object v3, v6

    .line 994
    .local v3, "resultConverter":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ButtonType;TR;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Dialog;->getResult()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 995
    .local v4, "priorResultValue":Ljava/lang/Object;, "TR;"
    const/4 v6, 0x0

    move-object v5, v6

    .line 997
    .local v5, "newResultValue":Ljava/lang/Object;, "TR;"
    move-object v6, v3

    if-nez v6, :cond_1

    .line 1024
    move-object v6, v1

    move-object v5, v6

    .line 1029
    .end local v5    # "newResultValue":Ljava/lang/Object;, "TR;"
    :goto_0
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/Dialog;->setResult(Ljava/lang/Object;)V

    .line 1035
    move v6, v2

    if-eqz v6, :cond_0

    move-object v6, v4

    move-object v7, v5

    if-ne v6, v7, :cond_0

    .line 1036
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Dialog;->close()V

    .line 1038
    :cond_0
    return-void

    .line 1026
    .restart local v5    # "newResultValue":Ljava/lang/Object;, "TR;"
    :cond_1
    move-object v6, v3

    move-object v7, v1

    invoke-interface {v6, v7}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    goto :goto_0
.end method

.method public final initModality(Ljavafx/stage/Modality;)V
    .locals 4

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "modality":Ljavafx/stage/Modality;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FXDialog;->initModality(Ljavafx/stage/Modality;)V

    .line 439
    return-void
.end method

.method public final initOwner(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FXDialog;->initOwner(Ljavafx/stage/Window;)V

    .line 480
    return-void
.end method

.method public final initStyle(Ljavafx/stage/StageStyle;)V
    .locals 4

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "style":Ljavafx/stage/StageStyle;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FXDialog;->initStyle(Ljavafx/stage/StageStyle;)V

    .line 465
    return-void
.end method

.method public final isResizable()Z
    .locals 2

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->resizableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return v0
.end method

.method public final isShowing()Z
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Dialog;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return v0
.end method

.method public final onCloseRequestProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 970
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Dialog$7;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onCloseRequest"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Dialog$7;-><init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    .line 976
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onCloseRequest:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final onHiddenProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHidden:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 946
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Dialog$6;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onHidden"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Dialog$6;-><init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->onHidden:Ljavafx/beans/property/ObjectProperty;

    .line 952
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHidden:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final onHidingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHiding:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 924
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Dialog$5;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onHiding"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Dialog$5;-><init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->onHiding:Ljavafx/beans/property/ObjectProperty;

    .line 930
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onHiding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final onShowingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShowing:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 886
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Dialog$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onShowing"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Dialog$3;-><init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->onShowing:Ljavafx/beans/property/ObjectProperty;

    .line 892
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShowing:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final onShownProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShown:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 905
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Dialog$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "onShown"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Dialog$4;-><init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Dialog;->onShown:Ljavafx/beans/property/ObjectProperty;

    .line 911
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->onShown:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final resizableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->resizableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final resultConverterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            "TR;>;>;"
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->resultConverterProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final resultProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->resultProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final setContentText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "contentText":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/DialogPane;->setContentText(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public final setDialogPane(Ljavafx/scene/control/DialogPane;)V
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/DialogPane;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialogPane:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "graphic":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/DialogPane;->setGraphic(Ljavafx/scene/Node;)V

    .line 653
    return-void
.end method

.method public final setHeaderText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "headerText":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/DialogPane;->setHeaderText(Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/FXDialog;->setHeight(D)V

    .line 801
    return-void
.end method

.method public final setOnCloseRequest(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 962
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/DialogEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->onCloseRequestProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 963
    return-void
.end method

.method public final setOnHidden(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/DialogEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnHiding(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/DialogEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShowing(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/DialogEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShown(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 899
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/DialogEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setResizable(Z)V
    .locals 4

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move v1, p1

    .local v1, "resizable":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->resizableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 755
    return-void
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TR;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->resultProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 680
    return-void
.end method

.method public final setResultConverter(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            "TR;>;)V"
        }
    .end annotation

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ButtonType;TR;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->resultConverterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v2}, Ljavafx/scene/control/FXDialog;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 824
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/FXDialog;->setWidth(D)V

    .line 778
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/FXDialog;->setX(D)V

    .line 834
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-wide v1, p1

    .local v1, "y":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/FXDialog;->setY(D)V

    .line 851
    return-void
.end method

.method public final show()V
    .locals 8

    .prologue
    .line 294
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 296
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/DialogEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    sget-object v6, Ljavafx/scene/control/DialogEvent;->DIALOG_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/DialogEvent;-><init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 297
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getHeight()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 298
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v2}, Ljavafx/scene/control/FXDialog;->sizeToScene()V

    .line 301
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v2}, Ljavafx/scene/control/FXDialog;->show()V

    .line 303
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/DialogEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    sget-object v6, Ljavafx/scene/control/DialogEvent;->DIALOG_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/DialogEvent;-><init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 304
    return-void
.end method

.method public final showAndWait()Ljava/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 325
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 327
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->canStartNestedEventLoop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "showAndWait is not allowed during animation or layout processing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_0
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/DialogEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    sget-object v6, Ljavafx/scene/control/DialogEvent;->DIALOG_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/DialogEvent;-><init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 332
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getHeight()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 333
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v2}, Ljavafx/scene/control/FXDialog;->sizeToScene()V

    .line 339
    :cond_1
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/DialogEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    sget-object v6, Ljavafx/scene/control/DialogEvent;->DIALOG_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/DialogEvent;-><init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V

    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 341
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v2}, Ljavafx/scene/control/FXDialog;->showAndWait()V

    .line 343
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Dialog;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v1
.end method

.method public final showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final titleProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 763
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->xProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v1}, Ljavafx/scene/control/FXDialog;->yProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<TR;>;"
    return-object v0
.end method
