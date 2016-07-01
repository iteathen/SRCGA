.class public final Ljavafx/scene/web/WebEngine;
.super Ljava/lang/Object;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/web/WebEngine$InspectorClientImpl;,
        Ljavafx/scene/web/WebEngine$DebuggerImpl;,
        Ljavafx/scene/web/WebEngine$DocumentProperty;,
        Ljavafx/scene/web/WebEngine$LoadWorker;,
        Ljavafx/scene/web/WebEngine$PageLoadListener;,
        Ljavafx/scene/web/WebEngine$PulseTimer;,
        Ljavafx/scene/web/WebEngine$AccessorImpl;,
        Ljavafx/scene/web/WebEngine$SelfDisposer;
    }
.end annotation


# static fields
.field private static instanceCount:I


# instance fields
.field private final confirmHandler:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final createPopupHandler:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PopupFeatures;",
            "Ljavafx/scene/web/WebEngine;",
            ">;>;"
        }
    .end annotation
.end field

.field private final debugger:Ljavafx/scene/web/WebEngine$DebuggerImpl;

.field private final document:Ljavafx/scene/web/WebEngine$DocumentProperty;

.field private final history:Ljavafx/scene/web/WebHistory;

.field private javaScriptEnabled:Ljavafx/beans/property/BooleanProperty;

.field private final loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

.field private final location:Ljavafx/beans/property/ReadOnlyStringWrapper;

.field private final onAlert:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final onResized:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final onStatusChanged:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final onVisibilityChanged:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final page:Lcom/sun/webkit/WebPage;

.field private final promptHandler:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PromptData;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final title:Ljavafx/beans/property/ReadOnlyStringWrapper;

.field private userAgent:Ljavafx/beans/property/StringProperty;

.field private userStyleSheetLocation:Ljavafx/beans/property/StringProperty;

.field private final view:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/web/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Ljavafx/scene/web/WebEngine$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/web/WebEngine$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/webkit/Accessor;->setPageAccessor(Lcom/sun/javafx/webkit/Accessor$PageAccessor;)V

    .line 286
    new-instance v0, Lcom/sun/javafx/webkit/prism/PrismInvoker;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/webkit/prism/PrismInvoker;-><init>()V

    invoke-static {v0}, Lcom/sun/webkit/Invoker;->setInvoker(Lcom/sun/webkit/Invoker;)V

    .line 299
    const/4 v0, 0x0

    sput v0, Ljavafx/scene/web/WebEngine;->instanceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/web/WebEngine;-><init>(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 306
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "view"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->view:Ljavafx/beans/property/ObjectProperty;

    .line 311
    move-object v3, v0

    new-instance v4, Ljavafx/scene/web/WebEngine$LoadWorker;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/web/WebEngine$LoadWorker;-><init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

    .line 321
    move-object v3, v0

    new-instance v4, Ljavafx/scene/web/WebEngine$DebuggerImpl;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/web/WebEngine$DebuggerImpl;-><init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->debugger:Ljavafx/scene/web/WebEngine$DebuggerImpl;

    .line 335
    move-object v3, v0

    new-instance v4, Ljavafx/scene/web/WebEngine$DocumentProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/web/WebEngine$DocumentProperty;-><init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->document:Ljavafx/scene/web/WebEngine$DocumentProperty;

    .line 355
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "location"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyStringWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->location:Ljavafx/beans/property/ReadOnlyStringWrapper;

    .line 379
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "title"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/ReadOnlyStringWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    .line 540
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "onAlert"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->onAlert:Ljavafx/beans/property/ObjectProperty;

    .line 564
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "onStatusChanged"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->onStatusChanged:Ljavafx/beans/property/ObjectProperty;

    .line 588
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "onResized"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->onResized:Ljavafx/beans/property/ObjectProperty;

    .line 613
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "onVisibilityChanged"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->onVisibilityChanged:Ljavafx/beans/property/ObjectProperty;

    .line 638
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "createPopupHandler"

    new-instance v8, Ljavafx/scene/web/WebEngine$5;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Ljavafx/scene/web/WebEngine$5;-><init>(Ljavafx/scene/web/WebEngine;)V

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->createPopupHandler:Ljavafx/beans/property/ObjectProperty;

    .line 676
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "confirmHandler"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->confirmHandler:Ljavafx/beans/property/ObjectProperty;

    .line 702
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const-string v7, "promptHandler"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->promptHandler:Ljavafx/beans/property/ObjectProperty;

    .line 742
    sget v3, Ljavafx/scene/web/WebEngine;->instanceCount:I

    if-nez v3, :cond_0

    .line 743
    invoke-static {}, Lcom/sun/webkit/Timer;->getMode()Lcom/sun/webkit/Timer$Mode;

    move-result-object v3

    sget-object v4, Lcom/sun/webkit/Timer$Mode;->PLATFORM_TICKS:Lcom/sun/webkit/Timer$Mode;

    if-ne v3, v4, :cond_0

    .line 745
    # invokes: Ljavafx/scene/web/WebEngine$PulseTimer;->start()V
    invoke-static {}, Ljavafx/scene/web/WebEngine$PulseTimer;->access$500()V

    .line 747
    :cond_0
    new-instance v3, Ljavafx/scene/web/WebEngine$AccessorImpl;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/web/WebEngine$AccessorImpl;-><init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V

    move-object v2, v3

    .line 748
    .local v2, "accessor":Lcom/sun/javafx/webkit/Accessor;
    move-object v3, v0

    new-instance v4, Lcom/sun/webkit/WebPage;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/webkit/WebPage;-><init>(Ljavafx/scene/web/WebEngine;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    .line 755
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    new-instance v4, Ljavafx/scene/web/WebEngine$PageLoadListener;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/web/WebEngine$PageLoadListener;-><init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V

    invoke-virtual {v3, v4}, Lcom/sun/webkit/WebPage;->addLoadListenerClient(Lcom/sun/webkit/LoadListenerClient;)V

    .line 757
    move-object v3, v0

    new-instance v4, Ljavafx/scene/web/WebHistory;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-direct {v5, v6}, Ljavafx/scene/web/WebHistory;-><init>(Lcom/sun/webkit/WebPage;)V

    iput-object v4, v3, Ljavafx/scene/web/WebEngine;->history:Ljavafx/scene/web/WebHistory;

    .line 759
    move-object v3, v0

    new-instance v4, Ljavafx/scene/web/WebEngine$SelfDisposer;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/web/WebEngine$SelfDisposer;-><init>(Lcom/sun/webkit/WebPage;Ljavafx/scene/web/WebEngine$1;)V

    invoke-static {v3, v4}, Lcom/sun/webkit/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;)V

    .line 761
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/web/WebEngine;->load(Ljava/lang/String;)V

    .line 763
    sget v3, Ljavafx/scene/web/WebEngine;->instanceCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    sput v3, Ljavafx/scene/web/WebEngine;->instanceCount:I

    .line 764
    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 278
    sget v0, Ljavafx/scene/web/WebEngine;->instanceCount:I

    return v0
.end method

.method static synthetic access$1110()I
    .locals 4

    .prologue
    .line 278
    sget v0, Ljavafx/scene/web/WebEngine;->instanceCount:I

    move v3, v0

    move v0, v3

    move v1, v3

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sput v1, Ljavafx/scene/web/WebEngine;->instanceCount:I

    return v0
.end method

.method static synthetic access$1300(Ljavafx/scene/web/WebEngine;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->view:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/web/WebEngine;)Ljavafx/scene/web/WebEngine$LoadWorker;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/web/WebEngine;)V
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/web/WebEngine;->stop()V

    return-void
.end method

.method static synthetic access$1600(Ljavafx/scene/web/WebEngine;)J
    .locals 3

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/web/WebEngine;->getMainFrame()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebEngine;
    return-wide v0
.end method

.method static synthetic access$1700(Ljavafx/scene/web/WebEngine;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/web/WebEngine;->updateLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/web/WebEngine;)V
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/web/WebEngine;->updateTitle()V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/web/WebEngine;)Ljavafx/scene/web/WebEngine$DocumentProperty;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->document:Ljavafx/scene/web/WebEngine$DocumentProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/web/WebEngine;)Ljavafx/scene/web/WebEngine$DebuggerImpl;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->debugger:Ljavafx/scene/web/WebEngine$DebuggerImpl;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method static checkThread()V
    .locals 1

    .prologue
    .line 979
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 980
    return-void
.end method

.method private getMainFrame()J
    .locals 3

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v1}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-wide v0
.end method

.method private stop()V
    .locals 4

    .prologue
    .line 880
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 881
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v2}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/webkit/WebPage;->stop(J)V

    .line 882
    return-void
.end method

.method private updateLocation(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->location:Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 371
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->document:Ljavafx/scene/web/WebEngine$DocumentProperty;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/web/WebEngine$DocumentProperty;->access$300(Ljavafx/scene/web/WebEngine$DocumentProperty;Z)V

    .line 372
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private updateTitle()V
    .locals 6

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebEngine;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v4}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/webkit/WebPage;->getTitle(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyStringWrapper;->set(Ljava/lang/String;)V

    .line 395
    return-void
.end method


# virtual methods
.method public final confirmHandlerProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->confirmHandler:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final createPopupHandlerProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PopupFeatures;",
            "Ljavafx/scene/web/WebEngine;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->createPopupHandler:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final documentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->document:Ljavafx/scene/web/WebEngine$DocumentProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public executeScript(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 859
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebEngine;
    move-object v2, p1

    .local v2, "script":Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 860
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v4}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/webkit/WebPage;->executeScript(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/web/WebEngine;
    return-object v1
.end method

.method public final getConfirmHandler()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->confirmHandler:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getCreatePopupHandler()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PopupFeatures;",
            "Ljavafx/scene/web/WebEngine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->createPopupHandler:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getDocument()Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->document:Ljavafx/scene/web/WebEngine$DocumentProperty;

    invoke-virtual {v1}, Ljavafx/scene/web/WebEngine$DocumentProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public getHistory()Ljavafx/scene/web/WebHistory;
    .locals 2

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->history:Ljavafx/scene/web/WebHistory;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getLoadWorker()Ljavafx/concurrent/Worker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/concurrent/Worker",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->location:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getOnAlert()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onAlert:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getOnResized()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onResized:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getOnStatusChanged()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onStatusChanged:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getOnVisibilityChanged()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onVisibilityChanged:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method getPage()Lcom/sun/webkit/WebPage;
    .locals 2

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getPromptHandler()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PromptData;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->promptHandler:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userAgent:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v1}, Lcom/sun/webkit/WebPage;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/web/WebEngine;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userAgent:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getUserStyleSheetLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userStyleSheetLocation:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/web/WebEngine;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userStyleSheetLocation:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getView()Ljavafx/scene/web/WebView;
    .locals 2

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->view:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/web/WebView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public impl_getDebugger()Lcom/sun/javafx/scene/web/Debugger;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->debugger:Ljavafx/scene/web/WebEngine$DebuggerImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final isJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->javaScriptEnabled:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return v0

    .restart local v0    # "this":Ljavafx/scene/web/WebEngine;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->javaScriptEnabled:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final javaScriptEnabledProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->javaScriptEnabled:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 418
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebEngine$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/web/WebEngine$2;-><init>(Ljavafx/scene/web/WebEngine;Z)V

    iput-object v2, v1, Ljavafx/scene/web/WebEngine;->javaScriptEnabled:Ljavafx/beans/property/BooleanProperty;

    .line 433
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->javaScriptEnabled:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 773
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

    invoke-static {v3}, Ljavafx/scene/web/WebEngine$LoadWorker;->access$900(Ljavafx/scene/web/WebEngine$LoadWorker;)V

    .line 775
    move-object v3, v1

    if-nez v3, :cond_0

    .line 776
    const-string v3, ""

    move-object v1, v3

    .line 789
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v4}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/webkit/WebPage;->open(JLjava/lang/String;)V

    .line 790
    return-void

    .line 781
    :cond_0
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lcom/sun/webkit/network/Util;->adjustUrlForWebKit(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 787
    goto :goto_0

    .line 782
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 783
    .local v2, "e":Ljava/net/MalformedURLException;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/web/WebEngine;->getMainFrame()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v7, v1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Ljavafx/scene/web/WebEngine$LoadWorker;->access$1000(Ljavafx/scene/web/WebEngine$LoadWorker;JILjava/lang/String;Ljava/lang/String;DI)V

    .line 785
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/web/WebEngine;->getMainFrame()J

    move-result-wide v4

    const/4 v6, 0x5

    move-object v7, v1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    invoke-static/range {v3 .. v11}, Ljavafx/scene/web/WebEngine$LoadWorker;->access$1000(Ljavafx/scene/web/WebEngine$LoadWorker;JILjava/lang/String;Ljava/lang/String;DI)V

    goto :goto_0
.end method

.method public loadContent(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-string v4, "text/html"

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/web/WebEngine;->loadContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public loadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentType":Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 812
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->loadWorker:Ljavafx/scene/web/WebEngine$LoadWorker;

    invoke-static {v3}, Ljavafx/scene/web/WebEngine$LoadWorker;->access$900(Ljavafx/scene/web/WebEngine$LoadWorker;)V

    .line 813
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v4}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v4

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/webkit/WebPage;->load(JLjava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public final locationProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->location:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final onAlertProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onAlert:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final onResizedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onResized:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final onStatusChangedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onStatusChanged:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final onVisibilityChangedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->onVisibilityChanged:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final promptHandlerProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PromptData;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->promptHandler:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public reload()V
    .locals 4

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 823
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v2}, Lcom/sun/webkit/WebPage;->getMainFrame()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/webkit/WebPage;->refresh(J)V

    .line 824
    return-void
.end method

.method public final setConfirmHandler(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "handler":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->confirmHandler:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCreatePopupHandler(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PopupFeatures;",
            "Ljavafx/scene/web/WebEngine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "handler":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/web/PopupFeatures;Ljavafx/scene/web/WebEngine;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->createPopupHandler:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setJavaScriptEnabled(Z)V
    .locals 4

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine;->javaScriptEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 410
    return-void
.end method

.method public final setOnAlert(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/String;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->onAlert:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnResized(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljavafx/geometry/Rectangle2D;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->onResized:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnStatusChanged(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/String;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->onStatusChanged:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnVisibilityChanged(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/web/WebEvent",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/web/WebEvent<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->onVisibilityChanged:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPromptHandler(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/web/PromptData;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "handler":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/web/PromptData;Ljava/lang/String;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->promptHandler:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine;->userAgentProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public final setUserStyleSheetLocation(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine;->userStyleSheetLocationProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method setView(Ljavafx/scene/web/WebView;)V
    .locals 4

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, p1

    .local v1, "view":Ljavafx/scene/web/WebView;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebEngine;->view:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 873
    return-void
.end method

.method public final titleProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->title:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final userAgentProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userAgent:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 522
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebEngine$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebEngine;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v5}, Lcom/sun/webkit/WebPage;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/web/WebEngine$4;-><init>(Ljavafx/scene/web/WebEngine;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/web/WebEngine;->userAgent:Ljavafx/beans/property/StringProperty;

    .line 537
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userAgent:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public final userStyleSheetLocationProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userStyleSheetLocation:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 458
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebEngine$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/web/WebEngine$3;-><init>(Ljavafx/scene/web/WebEngine;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/web/WebEngine;->userStyleSheetLocation:Ljavafx/beans/property/StringProperty;

    .line 500
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine;->userStyleSheetLocation:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method
