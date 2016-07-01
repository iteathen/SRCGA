.class public Lcom/sun/prism/es2/ES2Pipeline;
.super Lcom/sun/prism/GraphicsPipeline;
.source "ES2Pipeline.java"


# static fields
.field private static creator:Ljava/lang/Thread;

.field private static es2Enabled:Z

.field private static factories:[Lcom/sun/prism/es2/ES2ResourceFactory;

.field public static final glFactory:Lcom/sun/prism/es2/GLFactory;

.field private static isEglfb:Z

.field static final msaa:Z

.field static final npotSupported:Z

.field public static final pixelFormatAttributes:Lcom/sun/prism/es2/GLPixelFormat$Attributes;

.field private static final theInstance:Lcom/sun/prism/es2/ES2Pipeline;


# instance fields
.field _default:Lcom/sun/prism/es2/ES2ResourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/sun/prism/es2/GLPixelFormat$Attributes;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;-><init>()V

    sput-object v0, Lcom/sun/prism/es2/ES2Pipeline;->pixelFormatAttributes:Lcom/sun/prism/es2/GLPixelFormat$Attributes;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->isEglfb:Z

    .line 50
    invoke-static {}, Lcom/sun/prism/es2/ES2Pipeline$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/sun/prism/es2/GLFactory;->getFactory()Lcom/sun/prism/es2/GLFactory;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/es2/ES2Pipeline;->creator:Ljava/lang/Thread;

    .line 80
    sget-object v0, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    const-class v1, Lcom/sun/prism/impl/PrismSettings;

    sget-object v2, Lcom/sun/prism/es2/ES2Pipeline;->pixelFormatAttributes:Lcom/sun/prism/es2/GLPixelFormat$Attributes;

    invoke-virtual {v0, v1, v2}, Lcom/sun/prism/es2/GLFactory;->initialize(Ljava/lang/Class;Lcom/sun/prism/es2/GLPixelFormat$Attributes;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->es2Enabled:Z

    .line 87
    :goto_0
    sget-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->es2Enabled:Z

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lcom/sun/prism/es2/ES2Pipeline;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/prism/es2/ES2Pipeline;-><init>()V

    sput-object v0, Lcom/sun/prism/es2/ES2Pipeline;->theInstance:Lcom/sun/prism/es2/ES2Pipeline;

    .line 89
    sget-object v0, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    invoke-virtual {v0}, Lcom/sun/prism/es2/GLFactory;->getAdapterCount()I

    move-result v0

    new-array v0, v0, [Lcom/sun/prism/es2/ES2ResourceFactory;

    sput-object v0, Lcom/sun/prism/es2/ES2Pipeline;->factories:[Lcom/sun/prism/es2/ES2ResourceFactory;

    .line 90
    sget-object v0, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    const-string v1, "GL_ARB_multisample"

    invoke-virtual {v0, v1}, Lcom/sun/prism/es2/GLFactory;->isGLExtensionSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->msaa:Z

    .line 91
    sget-object v0, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    invoke-virtual {v0}, Lcom/sun/prism/es2/GLFactory;->isNPOTSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->npotSupported:Z

    .line 98
    :goto_1
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->es2Enabled:Z

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/prism/es2/ES2Pipeline;->theInstance:Lcom/sun/prism/es2/ES2Pipeline;

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->msaa:Z

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/prism/es2/ES2Pipeline;->npotSupported:Z

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/GraphicsPipeline;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/prism/es2/ES2Pipeline;->lambda$static$448()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static findDefaultResourceFactory(Ljava/util/List;)Lcom/sun/prism/es2/ES2ResourceFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            ">;)",
            "Lcom/sun/prism/es2/ES2ResourceFactory;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    const/4 v4, 0x0

    move v1, v4

    .local v1, "adapter":I
    sget-object v4, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    invoke-virtual {v4}, Lcom/sun/prism/es2/GLFactory;->getAdapterCount()I

    move-result v4

    move v2, v4

    .local v2, "n":I
    :goto_0
    move v4, v1

    move v5, v2

    if-eq v4, v5, :cond_3

    .line 157
    move v4, v1

    move-object v5, v0

    move v6, v1

    .line 158
    invoke-static {v5, v6}, Lcom/sun/prism/es2/ES2Pipeline;->getScreenForAdapter(Ljava/util/List;I)Lcom/sun/glass/ui/Screen;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/prism/es2/ES2Pipeline;->getES2ResourceFactory(ILcom/sun/glass/ui/Screen;)Lcom/sun/prism/es2/ES2ResourceFactory;

    move-result-object v4

    move-object v3, v4

    .line 160
    .local v3, "rf":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 161
    sget-boolean v4, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v4, :cond_0

    .line 162
    sget-object v4, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/prism/es2/GLFactory;->printDriverInformation(I)V

    .line 164
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .line 172
    .end local v0    # "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    .end local v3    # "rf":Lcom/sun/prism/es2/ES2ResourceFactory;
    :goto_1
    return-object v0

    .line 166
    .restart local v0    # "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    .restart local v3    # "rf":Lcom/sun/prism/es2/ES2ResourceFactory;
    :cond_1
    sget-boolean v4, Lcom/sun/prism/impl/PrismSettings;->disableBadDriverWarning:Z

    if-nez v4, :cond_2

    .line 167
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "disableBadDriverWarning is unsupported on prism-es2"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v3    # "rf":Lcom/sun/prism/es2/ES2ResourceFactory;
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private static getES2ResourceFactory(ILcom/sun/glass/ui/Screen;)Lcom/sun/prism/es2/ES2ResourceFactory;
    .locals 7

    .prologue
    .line 130
    move v0, p0

    .local v0, "adapterOrdinal":I
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    sget-object v3, Lcom/sun/prism/es2/ES2Pipeline;->factories:[Lcom/sun/prism/es2/ES2ResourceFactory;

    move v4, v0

    aget-object v3, v3, v4

    move-object v2, v3

    .line 131
    .local v2, "factory":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 132
    new-instance v3, Lcom/sun/prism/es2/ES2ResourceFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/prism/es2/ES2ResourceFactory;-><init>(Lcom/sun/glass/ui/Screen;)V

    move-object v2, v3

    .line 133
    sget-object v3, Lcom/sun/prism/es2/ES2Pipeline;->factories:[Lcom/sun/prism/es2/ES2ResourceFactory;

    move v4, v0

    move-object v5, v2

    aput-object v5, v3, v4

    .line 135
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "adapterOrdinal":I
    return-object v0
.end method

.method public static getInstance()Lcom/sun/prism/es2/ES2Pipeline;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/sun/prism/es2/ES2Pipeline;->theInstance:Lcom/sun/prism/es2/ES2Pipeline;

    return-object v0
.end method

.method private static getScreenForAdapter(Ljava/util/List;I)Lcom/sun/glass/ui/Screen;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            ">;I)",
            "Lcom/sun/glass/ui/Screen;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    move v1, p1

    .local v1, "adapterOrdinal":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/Screen;

    move-object v3, v4

    .line 143
    .local v3, "screen":Lcom/sun/glass/ui/Screen;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getAdapterOrdinal()I

    move-result v4

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 144
    move-object v4, v3

    move-object v0, v4

    .line 147
    .end local v0    # "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    .end local v3    # "screen":Lcom/sun/glass/ui/Screen;
    :goto_1
    return-object v0

    .line 146
    .restart local v0    # "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    .restart local v3    # "screen":Lcom/sun/glass/ui/Screen;
    :cond_0
    goto :goto_0

    .line 147
    .end local v3    # "screen":Lcom/sun/glass/ui/Screen;
    :cond_1
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method

.method private static synthetic lambda$static$448()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 51
    const-string v2, "prism_es2"

    move-object v0, v2

    .line 53
    .local v0, "libName":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->getEmbeddedType()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 54
    .local v1, "eglType":Ljava/lang/String;
    const-string v2, "eglfb"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/prism/es2/ES2Pipeline;->isEglfb:Z

    .line 56
    const-string v2, "prism_es2_eglfb"

    move-object v0, v2

    .line 65
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v2, :cond_1

    .line 66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading ES2 native library ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 69
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v2, :cond_2

    .line 70
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\tsucceeded."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "libName":Ljava/lang/String;
    return-object v0

    .line 58
    .restart local v0    # "libName":Ljava/lang/String;
    :cond_3
    const-string v2, "monocle"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/prism/es2/ES2Pipeline;->isEglfb:Z

    .line 60
    const-string v2, "prism_es2_monocle"

    move-object v0, v2

    goto :goto_0

    .line 62
    :cond_4
    const-string v2, "eglx11"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "prism_es2_eglx11"

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 6

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    sget-object v1, Lcom/sun/prism/es2/ES2Pipeline;->creator:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This operation is not permitted on the current thread ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_0
    sget-boolean v1, Lcom/sun/prism/es2/ES2Pipeline;->isEglfb:Z

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Pipeline;->_default:Lcom/sun/prism/es2/ES2ResourceFactory;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2ResourceFactory;->dispose()V

    .line 199
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/prism/GraphicsPipeline;->dispose()V

    .line 200
    return-void
.end method

.method public getAdapterOrdinal(Lcom/sun/glass/ui/Screen;)I
    .locals 6

    .prologue
    .line 152
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2Pipeline;
    move-object v2, p1

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    sget-object v3, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/Screen;->getNativeScreen()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/es2/GLFactory;->getAdapterOrdinal(J)I

    move-result v3

    move v1, v3

    .end local v1    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    return v1
.end method

.method public getDefaultResourceFactory(Ljava/util/List;)Lcom/sun/prism/ResourceFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            ">;)",
            "Lcom/sun/prism/ResourceFactory;"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    move-object v1, p1

    .local v1, "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Pipeline;->_default:Lcom/sun/prism/es2/ES2ResourceFactory;

    if-nez v2, :cond_0

    .line 179
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/prism/es2/ES2Pipeline;->findDefaultResourceFactory(Ljava/util/List;)Lcom/sun/prism/es2/ES2ResourceFactory;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/prism/es2/ES2Pipeline;->_default:Lcom/sun/prism/es2/ES2ResourceFactory;

    .line 181
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2Pipeline;->_default:Lcom/sun/prism/es2/ES2ResourceFactory;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    return-object v0
.end method

.method public getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/Screen;->getAdapterOrdinal()I

    move-result v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/prism/es2/ES2Pipeline;->getES2ResourceFactory(ILcom/sun/glass/ui/Screen;)Lcom/sun/prism/es2/ES2ResourceFactory;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    return-object v0
.end method

.method public init()Z
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    sget-boolean v2, Lcom/sun/prism/es2/ES2Pipeline;->es2Enabled:Z

    if-eqz v2, :cond_1

    .line 110
    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 111
    .local v1, "devDetails":Ljava/util/HashMap;
    sget-object v2, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLFactory;->updateDeviceDetails(Ljava/util/HashMap;)V

    .line 112
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2Pipeline;->setDeviceDetails(Ljava/util/Map;)V

    .line 113
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->forceGPU:Z

    if-nez v2, :cond_0

    .line 114
    sget-object v2, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLFactory;->isGLGPUQualify()Z

    move-result v2

    sput-boolean v2, Lcom/sun/prism/es2/ES2Pipeline;->es2Enabled:Z

    .line 115
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v2, :cond_0

    .line 116
    sget-boolean v2, Lcom/sun/prism/es2/ES2Pipeline;->es2Enabled:Z

    if-nez v2, :cond_0

    .line 117
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed Graphics Hardware Qualifier check.\nSystem GPU doesn\'t meet the es2 pipe requirement"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    .line 125
    .end local v1    # "devDetails":Ljava/util/HashMap;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/sun/prism/es2/ES2Pipeline;->es2Enabled:Z

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    return v0

    .line 122
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    :cond_1
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v2, :cond_0

    .line 123
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to initialize ES2 backend: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public is3DSupported()Z
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    sget-boolean v1, Lcom/sun/prism/es2/ES2Pipeline;->npotSupported:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    return v0
.end method

.method public final isMSAASupported()Z
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    sget-boolean v1, Lcom/sun/prism/es2/ES2Pipeline;->msaa:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    return v0
.end method

.method public isVsyncSupported()Z
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    return v0
.end method

.method public supportsShaderModel(Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    move-object v1, p1

    .local v1, "model":Lcom/sun/prism/GraphicsPipeline$ShaderModel;
    sget-object v2, Lcom/sun/prism/es2/ES2Pipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderModel:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 234
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    :goto_0
    return v0

    .line 232
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    :pswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsShaderType(Lcom/sun/prism/GraphicsPipeline$ShaderType;)Z
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Pipeline;
    move-object v1, p1

    .local v1, "type":Lcom/sun/prism/GraphicsPipeline$ShaderType;
    sget-object v2, Lcom/sun/prism/es2/ES2Pipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderType:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/GraphicsPipeline$ShaderType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 224
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    :goto_0
    return v0

    .line 222
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2Pipeline;
    :pswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
