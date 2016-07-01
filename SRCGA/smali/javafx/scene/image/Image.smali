.class public Ljavafx/scene/image/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/image/Image$ImageTask;,
        Ljavafx/scene/image/Image$Animation;,
        Ljavafx/scene/image/Image$ObjectPropertyImpl;,
        Ljavafx/scene/image/Image$DoublePropertyImpl;
    }
.end annotation


# static fields
.field private static final MAX_RUNNING_TASKS:I = 0x4

.field private static final URL_QUICKMATCH:Ljava/util/regex/Pattern;

.field private static final pendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljavafx/scene/image/Image$ImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private static runningTasks:I


# instance fields
.field private animFrames:[Lcom/sun/javafx/tk/PlatformImage;

.field private animation:Ljavafx/scene/image/Image$Animation;

.field private final backgroundLoading:Z

.field private backgroundTask:Ljavafx/scene/image/Image$ImageTask;

.field private error:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljavafx/scene/image/Image$DoublePropertyImpl;

.field private final impl_source:Ljava/io/InputStream;

.field private platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/image/Image$ObjectPropertyImpl",
            "<",
            "Lcom/sun/javafx/tk/PlatformImage;",
            ">;"
        }
    .end annotation
.end field

.field private final preserveRatio:Z

.field private progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private reader:Ljavafx/scene/image/PixelReader;

.field private final requestedHeight:D

.field private final requestedWidth:D

.field private final smooth:Z

.field private final url:Ljava/lang/String;

.field private width:Ljavafx/scene/image/Image$DoublePropertyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Ljavafx/scene/image/Image$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/image/Image$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/tk/Toolkit;->setImageAccessor(Lcom/sun/javafx/tk/Toolkit$ImageAccessor;)V

    .line 152
    const-string v0, "^\\p{Alpha}[\\p{Alnum}+.-]*:.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljavafx/scene/image/Image;->URL_QUICKMATCH:Ljava/util/regex/Pattern;

    .line 1006
    const/4 v0, 0x0

    sput v0, Ljavafx/scene/image/Image;->runningTasks:I

    .line 1007
    new-instance v0, Ljava/util/LinkedList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljavafx/scene/image/Image;->pendingTasks:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(II)V
    .locals 14

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    int-to-double v6, v6

    move v8, v2

    int-to-double v8, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 741
    move v3, v1

    if-lez v3, :cond_0

    move v3, v2

    if-gtz v3, :cond_1

    .line 742
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    const-string v5, "Image dimensions must be positive (w,h > 0)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 744
    :cond_1
    move-object v3, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/tk/Toolkit;->createPlatformImage(II)Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 745
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 13
    .param p1    # Ljava/io/InputStream;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "is"
        .end annotation
    .end param

    .prologue
    .line 706
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object v2, p1

    .local v2, "is":Ljava/io/InputStream;
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    invoke-static {v5}, Ljavafx/scene/image/Image;->validateInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 707
    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;DDZZ)V
    .locals 18
    .param p1    # Ljava/io/InputStream;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "is"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "requestedWidth"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "requestedHeight"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "preserveRatio"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "smooth"
        .end annotation
    .end param

    .prologue
    .line 726
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object/from16 v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-wide/from16 v2, p2

    .local v2, "requestedWidth":D
    move-wide/from16 v4, p4

    .local v4, "requestedHeight":D
    move/from16 v6, p6

    .local v6, "preserveRatio":Z
    move/from16 v7, p7

    .local v7, "smooth":Z
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-static {v10}, Ljavafx/scene/image/Image;->validateInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v10

    move-wide v11, v2

    move-wide v13, v4

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 728
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 729
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 13

    .prologue
    .line 748
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object v2, p1

    .local v2, "externalImage":Ljava/lang/Object;
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 749
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 750
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "url"
        .end annotation
    .end param

    .prologue
    .line 620
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object v2, p1

    .local v2, "url":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Ljavafx/scene/image/Image;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 621
    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 622
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDZZ)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "url"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "requestedWidth"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "requestedHeight"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "preserveRatio"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "smooth"
        .end annotation
    .end param

    .prologue
    .line 659
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "requestedWidth":D
    move-wide/from16 v4, p4

    .local v4, "requestedHeight":D
    move/from16 v6, p6

    .local v6, "preserveRatio":Z
    move/from16 v7, p7

    .local v7, "smooth":Z
    move-object v8, v0

    move-object v9, v1

    invoke-static {v9}, Ljavafx/scene/image/Image;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-wide v11, v2

    move-wide v13, v4

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 661
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 662
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDZZZ)V
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "\"\""
            value = "url"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "requestedWidth"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "requestedHeight"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "preserveRatio"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "true"
            value = "smooth"
        .end annotation
    .end param
    .param p8    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "backgroundLoading"
        .end annotation
    .end param

    .prologue
    .line 693
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "requestedWidth":D
    move-wide/from16 v4, p4

    .local v4, "requestedHeight":D
    move/from16 v6, p6

    .local v6, "preserveRatio":Z
    move/from16 v7, p7

    .local v7, "smooth":Z
    move/from16 v8, p8

    .local v8, "backgroundLoading":Z
    move-object v9, v0

    move-object v10, v1

    invoke-static {v10}, Ljavafx/scene/image/Image;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-wide v12, v2

    move-wide v14, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-direct/range {v9 .. v18}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 695
    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 696
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V
    .locals 15

    .prologue
    .line 755
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object/from16 v2, p1

    .local v2, "url":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "is":Ljava/io/InputStream;
    move-wide/from16 v4, p3

    .local v4, "requestedWidth":D
    move-wide/from16 v6, p5

    .local v6, "requestedHeight":D
    move/from16 v8, p7

    .local v8, "preserveRatio":Z
    move/from16 v9, p8

    .local v9, "smooth":Z
    move/from16 v10, p9

    .local v10, "backgroundLoading":Z
    move-object v11, v1

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 756
    move-object v11, v1

    move-object v12, v2

    iput-object v12, v11, Ljavafx/scene/image/Image;->url:Ljava/lang/String;

    .line 757
    move-object v11, v1

    move-object v12, v3

    iput-object v12, v11, Ljavafx/scene/image/Image;->impl_source:Ljava/io/InputStream;

    .line 758
    move-object v11, v1

    move-wide v12, v4

    iput-wide v12, v11, Ljavafx/scene/image/Image;->requestedWidth:D

    .line 759
    move-object v11, v1

    move-wide v12, v6

    iput-wide v12, v11, Ljavafx/scene/image/Image;->requestedHeight:D

    .line 760
    move-object v11, v1

    move v12, v8

    iput-boolean v12, v11, Ljavafx/scene/image/Image;->preserveRatio:Z

    .line 761
    move-object v11, v1

    move v12, v9

    iput-boolean v12, v11, Ljavafx/scene/image/Image;->smooth:Z

    .line 762
    move-object v11, v1

    move v12, v10

    iput-boolean v12, v11, Ljavafx/scene/image/Image;->backgroundLoading:Z

    .line 763
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "url"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "backgroundLoading"
        .end annotation
    .end param

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move v2, p2

    .local v2, "backgroundLoading":Z
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/image/Image;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v2

    invoke-direct/range {v3 .. v12}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;Ljava/io/InputStream;DDZZZ)V

    .line 637
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image;->initialize(Ljava/lang/Object;)V

    .line 638
    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/image/Image;)[Lcom/sun/javafx/tk/PlatformImage;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->animFrames:[Lcom/sun/javafx/tk/PlatformImage;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/image/Image;)Z
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/image/Image;->smooth:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return v0
.end method

.method static synthetic access$1100(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;DDZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;
    .locals 16

    .prologue
    .line 122
    move-object/from16 v0, p0

    .local v0, "x0":Lcom/sun/javafx/runtime/async/AsyncOperationListener;
    move-object/from16 v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "x2":D
    move-wide/from16 v4, p4

    .local v4, "x3":D
    move/from16 v6, p6

    .local v6, "x4":Z
    move/from16 v7, p7

    .local v7, "x5":Z
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    move v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Ljavafx/scene/image/Image;->loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;DDZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "x0":Lcom/sun/javafx/runtime/async/AsyncOperationListener;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->platformImagePropertyImpl()Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/image/Image;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Exception;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/image/Image;->finishImage(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/image/Image;)V
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->cycleTasks()V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/image/Image;Lcom/sun/javafx/tk/ImageLoader;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/tk/ImageLoader;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/image/Image;->finishImage(Lcom/sun/javafx/tk/ImageLoader;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/image/Image;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->url:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/image/Image;)D
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/image/Image;->requestedWidth:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return-wide v0
.end method

.method static synthetic access$800(Ljavafx/scene/image/Image;)D
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/image/Image;->requestedHeight:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return-wide v0
.end method

.method static synthetic access$900(Ljavafx/scene/image/Image;)Z
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/image/Image;->preserveRatio:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/Image;
    return v0
.end method

.method private static constructDetailedExceptionMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1137
    move-object v0, p0

    .local v0, "mainMessage":Ljava/lang/String;
    move-object v1, p1

    .local v1, "cause":Ljava/lang/Throwable;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1138
    move-object v3, v0

    move-object v0, v3

    .line 1142
    .end local v0    # "mainMessage":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1141
    .restart local v0    # "mainMessage":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1142
    .local v2, "causeMessage":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v1

    .line 1146
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 1142
    invoke-static {v3, v4}, Ljavafx/scene/image/Image;->constructDetailedExceptionMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    goto :goto_1
.end method

.method private cycleTasks()V
    .locals 7

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    sget-object v4, Ljavafx/scene/image/Image;->pendingTasks:Ljava/util/Queue;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 922
    :try_start_0
    sget v4, Ljavafx/scene/image/Image;->runningTasks:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    sput v4, Ljavafx/scene/image/Image;->runningTasks:I

    .line 926
    sget-object v4, Ljavafx/scene/image/Image;->pendingTasks:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/image/Image$ImageTask;

    move-object v2, v4

    .line 927
    .local v2, "nextTask":Ljavafx/scene/image/Image$ImageTask;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 928
    sget v4, Ljavafx/scene/image/Image;->runningTasks:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    sput v4, Ljavafx/scene/image/Image;->runningTasks:I

    .line 929
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/image/Image$ImageTask;->start()V

    .line 931
    :cond_0
    move-object v4, v1

    monitor-exit v4

    .line 932
    return-void

    .line 931
    .end local v2    # "nextTask":Ljavafx/scene/image/Image$ImageTask;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method private errorPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->error:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 490
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "error"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/image/Image;->error:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 492
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->error:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method private exceptionPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 517
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "exception"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/image/Image;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 519
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method private finishImage(Lcom/sun/javafx/tk/ImageLoader;)V
    .locals 14

    .prologue
    .line 815
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "loader":Lcom/sun/javafx/tk/ImageLoader;
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/javafx/tk/ImageLoader;->getException()Ljava/lang/Exception;

    move-result-object v8

    move-object v2, v8

    .line 816
    .local v2, "loadingException":Ljava/lang/Exception;
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 817
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Ljavafx/scene/image/Image;->finishImage(Ljava/lang/Exception;)V

    .line 818
    .line 830
    :goto_0
    return-void

    .line 821
    :cond_0
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/javafx/tk/ImageLoader;->getFrameCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 822
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Ljavafx/scene/image/Image;->initializeAnimatedImage(Lcom/sun/javafx/tk/ImageLoader;)V

    .line 829
    :goto_1
    move-object v8, v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/image/Image;->setProgress(D)V

    .line 830
    goto :goto_0

    .line 824
    :cond_1
    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/sun/javafx/tk/ImageLoader;->getFrame(I)Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v8

    move-object v3, v8

    .line 825
    .local v3, "pi":Lcom/sun/javafx/tk/PlatformImage;
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/javafx/tk/ImageLoader;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v3

    invoke-interface {v9}, Lcom/sun/javafx/tk/PlatformImage;->getPixelScale()F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    move-wide v4, v8

    .line 826
    .local v4, "w":D
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/javafx/tk/ImageLoader;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v3

    invoke-interface {v9}, Lcom/sun/javafx/tk/PlatformImage;->getPixelScale()F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    move-wide v6, v8

    .line 827
    .local v6, "h":D
    move-object v8, v0

    move-object v9, v3

    move-wide v10, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Ljavafx/scene/image/Image;->setPlatformImageWH(Lcom/sun/javafx/tk/PlatformImage;DD)V

    goto :goto_1
.end method

.method private finishImage(Ljava/lang/Exception;)V
    .locals 8

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Exception;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/image/Image;->setException(Ljava/lang/Exception;)V

    .line 834
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/image/Image;->setError(Z)V

    .line 835
    move-object v2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Ljavafx/scene/image/Image;->setPlatformImageWH(Lcom/sun/javafx/tk/PlatformImage;DD)V

    .line 836
    move-object v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/image/Image;->setProgress(D)V

    .line 837
    return-void
.end method

.method private heightPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;
    .locals 7

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->height:Ljavafx/scene/image/Image$DoublePropertyImpl;

    if-nez v1, :cond_0

    .line 345
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "height"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/image/Image$DoublePropertyImpl;-><init>(Ljavafx/scene/image/Image;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/image/Image;->height:Ljavafx/scene/image/Image$DoublePropertyImpl;

    .line 348
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->height:Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method public static impl_fromPlatformImage(Ljava/lang/Object;)Ljavafx/scene/image/Image;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 962
    move-object v0, p0

    .local v0, "image":Ljava/lang/Object;
    new-instance v1, Ljavafx/scene/image/Image;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "image":Ljava/lang/Object;
    return-object v0
.end method

.method private initialize(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "externalImage":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 795
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/image/Image;->loadPlatformImage(Ljava/lang/Object;)Lcom/sun/javafx/tk/ImageLoader;

    move-result-object v3

    move-object v2, v3

    .line 796
    .local v2, "loader":Lcom/sun/javafx/tk/ImageLoader;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image;->finishImage(Lcom/sun/javafx/tk/ImageLoader;)V

    .line 797
    .line 812
    .end local v2    # "loader":Lcom/sun/javafx/tk/ImageLoader;
    :goto_0
    return-void

    .line 797
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/Image;->isBackgroundLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/Image;->impl_source:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 799
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/image/Image;->loadInBackground()V

    goto :goto_0

    .line 803
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/Image;->impl_source:Ljava/io/InputStream;

    if-eqz v3, :cond_2

    .line 804
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/Image;->impl_source:Ljava/io/InputStream;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->getRequestedWidth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getRequestedHeight()D

    move-result-wide v6

    move-object v8, v0

    .line 805
    invoke-virtual {v8}, Ljavafx/scene/image/Image;->isPreserveRatio()Z

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/image/Image;->isSmooth()Z

    move-result v9

    .line 804
    invoke-static/range {v3 .. v9}, Ljavafx/scene/image/Image;->loadImage(Ljava/io/InputStream;DDZZ)Lcom/sun/javafx/tk/ImageLoader;

    move-result-object v3

    move-object v2, v3

    .line 810
    .restart local v2    # "loader":Lcom/sun/javafx/tk/ImageLoader;
    :goto_1
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image;->finishImage(Lcom/sun/javafx/tk/ImageLoader;)V

    goto :goto_0

    .line 807
    .end local v2    # "loader":Lcom/sun/javafx/tk/ImageLoader;
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/Image;->impl_getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->getRequestedWidth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getRequestedHeight()D

    move-result-wide v6

    move-object v8, v0

    .line 808
    invoke-virtual {v8}, Ljavafx/scene/image/Image;->isPreserveRatio()Z

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/image/Image;->isSmooth()Z

    move-result v9

    .line 807
    invoke-static/range {v3 .. v9}, Ljavafx/scene/image/Image;->loadImage(Ljava/lang/String;DDZZ)Lcom/sun/javafx/tk/ImageLoader;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "loader":Lcom/sun/javafx/tk/ImageLoader;
    goto :goto_1
.end method

.method private initializeAnimatedImage(Lcom/sun/javafx/tk/ImageLoader;)V
    .locals 15

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object/from16 v1, p1

    .local v1, "loader":Lcom/sun/javafx/tk/ImageLoader;
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/javafx/tk/ImageLoader;->getFrameCount()I

    move-result v8

    move v2, v8

    .line 849
    .local v2, "frameCount":I
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [Lcom/sun/javafx/tk/PlatformImage;

    iput-object v9, v8, Ljavafx/scene/image/Image;->animFrames:[Lcom/sun/javafx/tk/PlatformImage;

    .line 851
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_0

    .line 852
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/image/Image;->animFrames:[Lcom/sun/javafx/tk/PlatformImage;

    move v9, v3

    move-object v10, v1

    move v11, v3

    invoke-interface {v10, v11}, Lcom/sun/javafx/tk/ImageLoader;->getFrame(I)Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v10

    aput-object v10, v8, v9

    .line 851
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 855
    :cond_0
    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/sun/javafx/tk/ImageLoader;->getFrame(I)Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v8

    move-object v3, v8

    .line 857
    .local v3, "zeroFrame":Lcom/sun/javafx/tk/PlatformImage;
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/javafx/tk/ImageLoader;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v3

    invoke-interface {v9}, Lcom/sun/javafx/tk/PlatformImage;->getPixelScale()F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    move-wide v4, v8

    .line 858
    .local v4, "w":D
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/javafx/tk/ImageLoader;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v3

    invoke-interface {v9}, Lcom/sun/javafx/tk/PlatformImage;->getPixelScale()F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    move-wide v6, v8

    .line 859
    .local v6, "h":D
    move-object v8, v0

    move-object v9, v3

    move-wide v10, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Ljavafx/scene/image/Image;->setPlatformImageWH(Lcom/sun/javafx/tk/PlatformImage;DD)V

    .line 861
    move-object v8, v0

    new-instance v9, Ljavafx/scene/image/Image$Animation;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Ljavafx/scene/image/Image$Animation;-><init>(Ljavafx/scene/image/Image;Lcom/sun/javafx/tk/ImageLoader;)V

    iput-object v9, v8, Ljavafx/scene/image/Image;->animation:Ljavafx/scene/image/Image$Animation;

    .line 862
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/image/Image;->animation:Ljavafx/scene/image/Image$Animation;

    invoke-virtual {v8}, Ljavafx/scene/image/Image$Animation;->start()V

    .line 863
    return-void
.end method

.method private static loadImage(Ljava/io/InputStream;DDZZ)Lcom/sun/javafx/tk/ImageLoader;
    .locals 15

    .prologue
    .line 1073
    move-object v1, p0

    .local v1, "stream":Ljava/io/InputStream;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    move/from16 v6, p5

    .local v6, "preserveRatio":Z
    move/from16 v7, p6

    .local v7, "smooth":Z
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v8

    move-object v9, v1

    move-wide v10, v2

    double-to-int v10, v10

    move-wide v11, v4

    double-to-int v11, v11

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sun/javafx/tk/Toolkit;->loadImage(Ljava/io/InputStream;IIZZ)Lcom/sun/javafx/tk/ImageLoader;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "stream":Ljava/io/InputStream;
    return-object v1
.end method

.method private static loadImage(Ljava/lang/String;DDZZ)Lcom/sun/javafx/tk/ImageLoader;
    .locals 15

    .prologue
    .line 1065
    move-object v1, p0

    .local v1, "url":Ljava/lang/String;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    move/from16 v6, p5

    .local v6, "preserveRatio":Z
    move/from16 v7, p6

    .local v7, "smooth":Z
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v8

    move-object v9, v1

    move-wide v10, v2

    double-to-int v10, v10

    move-wide v11, v4

    double-to-int v11, v11

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sun/javafx/tk/Toolkit;->loadImage(Ljava/lang/String;IIZZ)Lcom/sun/javafx/tk/ImageLoader;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "url":Ljava/lang/String;
    return-object v1
.end method

.method private static loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;DDZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<+",
            "Lcom/sun/javafx/tk/ImageLoader;",
            ">;",
            "Ljava/lang/String;",
            "DDZZ)",
            "Lcom/sun/javafx/runtime/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 1082
    move-object/from16 v0, p0

    .local v0, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<+Lcom/sun/javafx/tk/ImageLoader;>;"
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move/from16 v6, p6

    .local v6, "preserveRatio":Z
    move/from16 v7, p7

    .local v7, "smooth":Z
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v8

    move-object v9, v0

    move-object v10, v1

    move-wide v11, v2

    double-to-int v11, v11

    move-wide v12, v4

    double-to-int v12, v12

    move v13, v6

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Lcom/sun/javafx/tk/Toolkit;->loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<+Lcom/sun/javafx/tk/ImageLoader;>;"
    return-object v0
.end method

.method private loadInBackground()V
    .locals 8

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v3, v0

    new-instance v4, Ljavafx/scene/image/Image$ImageTask;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/image/Image$ImageTask;-><init>(Ljavafx/scene/image/Image;)V

    iput-object v4, v3, Ljavafx/scene/image/Image;->backgroundTask:Ljavafx/scene/image/Image$ImageTask;

    .line 942
    sget-object v3, Ljavafx/scene/image/Image;->pendingTasks:Ljava/util/Queue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 943
    :try_start_0
    sget v3, Ljavafx/scene/image/Image;->runningTasks:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 944
    sget-object v3, Ljavafx/scene/image/Image;->pendingTasks:Ljava/util/Queue;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/image/Image;->backgroundTask:Ljavafx/scene/image/Image$ImageTask;

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 949
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 950
    return-void

    .line 946
    :cond_0
    sget v3, Ljavafx/scene/image/Image;->runningTasks:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    sput v3, Ljavafx/scene/image/Image;->runningTasks:I

    .line 947
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/Image;->backgroundTask:Ljavafx/scene/image/Image$ImageTask;

    invoke-virtual {v3}, Ljavafx/scene/image/Image$ImageTask;->start()V

    goto :goto_0

    .line 949
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method private static loadPlatformImage(Ljava/lang/Object;)Lcom/sun/javafx/tk/ImageLoader;
    .locals 3

    .prologue
    .line 1088
    move-object v0, p0

    .local v0, "platformImage":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->loadPlatformImage(Ljava/lang/Object;)Lcom/sun/javafx/tk/ImageLoader;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "platformImage":Ljava/lang/Object;
    return-object v0
.end method

.method private platformImagePropertyImpl()Ljavafx/scene/image/Image$ObjectPropertyImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/Image$ObjectPropertyImpl",
            "<",
            "Lcom/sun/javafx/tk/PlatformImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    if-nez v1, :cond_0

    .line 548
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "platformImage"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/image/Image$ObjectPropertyImpl;-><init>(Ljavafx/scene/image/Image;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    .line 551
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method private progressPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v1, :cond_0

    .line 211
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "progress"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/image/Image;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 213
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method private setError(Z)V
    .locals 4

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/image/Image;->errorPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 478
    return-void
.end method

.method private setException(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Exception;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/image/Image;->exceptionPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method private setPlatformImageWH(Lcom/sun/javafx/tk/PlatformImage;DD)V
    .locals 18

    .prologue
    .line 968
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object/from16 v2, p1

    .local v2, "newPlatformImage":Lcom/sun/javafx/tk/PlatformImage;
    move-wide/from16 v3, p2

    .local v3, "newWidth":D
    move-wide/from16 v5, p4

    .local v5, "newHeight":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v2

    if-ne v12, v13, :cond_0

    move-object v12, v1

    .line 969
    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v12

    move-wide v14, v3

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    move-object v12, v1

    .line 970
    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v12

    move-wide v14, v5

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    .line 971
    .line 991
    :goto_0
    return-void

    .line 974
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v12

    move-object v7, v12

    .line 975
    .local v7, "oldPlatformImage":Ljava/lang/Object;
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v12

    move-wide v8, v12

    .line 976
    .local v8, "oldWidth":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v12

    move-wide v10, v12

    .line 978
    .local v10, "oldHeight":D
    move-object v12, v1

    move-object v13, v2

    move-wide v14, v3

    move-wide/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Ljavafx/scene/image/Image;->storePlatformImageWH(Lcom/sun/javafx/tk/PlatformImage;DD)V

    .line 980
    move-object v12, v7

    move-object v13, v2

    if-eq v12, v13, :cond_1

    .line 981
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/image/Image;->platformImagePropertyImpl()Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->fireValueChangedEvent()V

    .line 984
    :cond_1
    move-wide v12, v8

    move-wide v14, v3

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_2

    .line 985
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/image/Image;->widthPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/scene/image/Image$DoublePropertyImpl;->fireValueChangedEvent()V

    .line 988
    :cond_2
    move-wide v12, v10

    move-wide v14, v5

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_3

    .line 989
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/image/Image;->heightPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/scene/image/Image$DoublePropertyImpl;->fireValueChangedEvent()V

    .line 991
    :cond_3
    goto :goto_0
.end method

.method private storePlatformImageWH(Lcom/sun/javafx/tk/PlatformImage;DD)V
    .locals 10

    .prologue
    .line 996
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "platformImage":Lcom/sun/javafx/tk/PlatformImage;
    move-wide v2, p2

    .local v2, "width":D
    move-wide v4, p4

    .local v4, "height":D
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/image/Image;->platformImagePropertyImpl()Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->store(Ljava/lang/Object;)V

    .line 997
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/image/Image;->widthPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/image/Image$DoublePropertyImpl;->store(D)V

    .line 998
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/image/Image;->heightPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-result-object v6

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/image/Image$DoublePropertyImpl;->store(D)V

    .line 999
    return-void
.end method

.method private static validateInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "inputStream":Ljava/io/InputStream;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 1128
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Input stream must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1131
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    return-object v0
.end method

.method private static validateUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "url":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 1093
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "URL must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1096
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1097
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "URL must not be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1101
    :cond_1
    :try_start_0
    sget-object v3, Ljavafx/scene/image/Image;->URL_QUICKMATCH:Ljava/util/regex/Pattern;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v1, v3

    .line 1104
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    .line 1105
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v2, v3

    .line 1109
    .local v2, "resource":Ljava/net/URL;
    :goto_0
    move-object v3, v2

    if-nez v3, :cond_3

    .line 1110
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Invalid URL or resource not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1116
    .end local v1    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v2    # "resource":Ljava/net/URL;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1117
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Invalid URL"

    move-object v6, v1

    .line 1118
    invoke-static {v5, v6}, Ljavafx/scene/image/Image;->constructDetailedExceptionMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1107
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_2
    move-object v3, v1

    move-object v4, v0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "resource":Ljava/net/URL;
    goto :goto_0

    .line 1112
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1115
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v2    # "resource":Ljava/net/URL;
    :goto_1
    return-object v0

    .restart local v0    # "url":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/net/URL;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 1119
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1120
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Invalid URL"

    move-object v6, v1

    .line 1121
    invoke-static {v5, v6}, Ljavafx/scene/image/Image;->constructDetailedExceptionMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private widthPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;
    .locals 7

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->width:Ljavafx/scene/image/Image$DoublePropertyImpl;

    if-nez v1, :cond_0

    .line 288
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "width"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/image/Image$DoublePropertyImpl;-><init>(Ljavafx/scene/image/Image;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/image/Image;->width:Ljavafx/scene/image/Image$DoublePropertyImpl;

    .line 291
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->width:Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method


# virtual methods
.method final acc_platformImageProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Lcom/sun/javafx/tk/PlatformImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->platformImagePropertyImpl()Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->backgroundTask:Ljavafx/scene/image/Image$ImageTask;

    if-eqz v1, :cond_0

    .line 773
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->backgroundTask:Ljavafx/scene/image/Image$ImageTask;

    invoke-virtual {v1}, Ljavafx/scene/image/Image$ImageTask;->cancel()V

    .line 775
    :cond_0
    return-void
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/Image;->cancel()V

    .line 782
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->animation:Ljavafx/scene/image/Image$Animation;

    if-eqz v1, :cond_0

    .line 783
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->animation:Ljavafx/scene/image/Image$Animation;

    invoke-virtual {v1}, Ljavafx/scene/image/Image$Animation;->stop()V

    .line 785
    :cond_0
    return-void
.end method

.method public final errorProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->errorPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method public final exceptionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->exceptionPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/image/Image;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->exception:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 336
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/Image;->height:Ljavafx/scene/image/Image$DoublePropertyImpl;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/image/Image;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/image/Image;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/Image;->height:Ljavafx/scene/image/Image$DoublePropertyImpl;

    invoke-virtual {v2}, Ljavafx/scene/image/Image$DoublePropertyImpl;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method final getImpl_source()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->impl_source:Ljava/io/InputStream;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method public final getPixelReader()Ljavafx/scene/image/PixelReader;
    .locals 6

    .prologue
    .line 1176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/Image;->pixelsReadable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1177
    const/4 v1, 0x0

    move-object v0, v1

    .line 1235
    .end local v0    # "this":Ljavafx/scene/image/Image;
    :goto_0
    return-object v0

    .line 1179
    .restart local v0    # "this":Ljavafx/scene/image/Image;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->reader:Ljavafx/scene/image/PixelReader;

    if-nez v1, :cond_1

    .line 1180
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/Image$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/Image$2;-><init>(Ljavafx/scene/image/Image;)V

    iput-object v2, v1, Ljavafx/scene/image/Image;->reader:Ljavafx/scene/image/PixelReader;

    .line 1235
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->reader:Ljavafx/scene/image/PixelReader;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getProgress()D
    .locals 4

    .prologue
    .line 202
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/Image;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/image/Image;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/image/Image;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/Image;->progress:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRequestedHeight()D
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/image/Image;->requestedHeight:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-wide v0
.end method

.method public final getRequestedWidth()D
    .locals 3

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/image/Image;->requestedWidth:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-wide v0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 279
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/Image;->width:Ljavafx/scene/image/Image$DoublePropertyImpl;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/image/Image;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/image/Image;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/Image;->width:Ljavafx/scene/image/Image$DoublePropertyImpl;

    invoke-virtual {v2}, Ljavafx/scene/image/Image$DoublePropertyImpl;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method getWritablePlatformImage()Lcom/sun/javafx/tk/PlatformImage;
    .locals 4

    .prologue
    .line 1239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    invoke-virtual {v2}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/tk/PlatformImage;

    move-object v1, v2

    .line 1240
    .local v1, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/tk/PlatformImage;->isWritable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/tk/PlatformImage;->promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v2

    move-object v1, v2

    .line 1243
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->set(Ljava/lang/Object;)V

    .line 1245
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method public final heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->heightPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method public final impl_getPlatformImage()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/image/Image;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    invoke-virtual {v1}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final impl_getUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->url:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method isAnimation()Z
    .locals 2

    .prologue
    .line 1153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->animation:Ljavafx/scene/image/Image$Animation;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return v0

    .restart local v0    # "this":Ljavafx/scene/image/Image;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isBackgroundLoading()Z
    .locals 2

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/image/Image;->backgroundLoading:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return v0
.end method

.method public final isError()Z
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->error:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return v0

    .restart local v0    # "this":Ljavafx/scene/image/Image;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image;->error:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isPreserveRatio()Z
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/image/Image;->preserveRatio:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return v0
.end method

.method public final isSmooth()Z
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/image/Image;->smooth:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return v0
.end method

.method pixelsDirty()V
    .locals 2

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->platformImagePropertyImpl()Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->fireValueChangedEvent()V

    .line 556
    return-void
.end method

.method pixelsReadable()Z
    .locals 6

    .prologue
    .line 1157
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/Image;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/Image;->isAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/Image;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/scene/image/Image;
    return v1

    .restart local v1    # "this":Ljavafx/scene/image/Image;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->progressPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method setPlatformImage(Lcom/sun/javafx/tk/PlatformImage;)V
    .locals 4

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, p1

    .local v1, "newPlatformImage":Lcom/sun/javafx/tk/PlatformImage;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image;->platformImage:Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->set(Ljava/lang/Object;)V

    .line 1003
    return-void
.end method

.method final setProgress(D)V
    .locals 7

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/image/Image;->progressPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 199
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/Image;->widthPropertyImpl()Ljavafx/scene/image/Image$DoublePropertyImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image;
    return-object v0
.end method
