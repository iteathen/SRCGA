.class Lcom/sun/scenario/effect/impl/RendererFactory;
.super Ljava/lang/Object;
.source "RendererFactory.java"


# static fields
.field private static rootPkg:Ljava/lang/String;

.field private static tryJOGL:Z

.field private static tryPrism:Z

.field private static tryRSL:Z

.field private static trySIMD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string v1, "com.sun.scenario.effect"

    sput-object v1, Lcom/sun/scenario/effect/impl/RendererFactory;->rootPkg:Ljava/lang/String;

    .line 44
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->tryRSL:Z

    .line 45
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->trySIMD:Z

    .line 47
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v1

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->tryJOGL:Z

    .line 48
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->tryPrism:Z

    .line 52
    :try_start_0
    const-string v1, "false"

    const-string v2, "decora.rsl"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->tryRSL:Z

    .line 55
    :cond_0
    const-string v1, "false"

    const-string v2, "decora.simd"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->trySIMD:Z

    .line 58
    :cond_1
    const-string v1, "decora.jogl"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 59
    .local v0, "tryJOGLProp":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_2

    .line 60
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->tryJOGL:Z

    .line 62
    :cond_2
    const-string v1, "false"

    const-string v2, "decora.prism"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/scenario/effect/impl/RendererFactory;->tryPrism:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/RendererFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/scenario/effect/impl/RendererFactory;->lambda$createRenderer$466(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static createJOGLRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 10

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    sget-boolean v3, Lcom/sun/scenario/effect/impl/RendererFactory;->tryJOGL:Z

    if-eqz v3, :cond_0

    .line 104
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/scenario/effect/impl/RendererFactory;->rootPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".impl.j2d.jogl.JOGLRenderer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 105
    .local v1, "klass":Ljava/lang/Class;
    move-object v3, v1

    const-string v4, "createRenderer"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Lcom/sun/scenario/effect/FilterContext;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 107
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/impl/Renderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 111
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return-object v0

    .line 108
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 111
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private static createPrismRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 10

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    sget-boolean v3, Lcom/sun/scenario/effect/impl/RendererFactory;->tryPrism:Z

    if-eqz v3, :cond_0

    .line 117
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/scenario/effect/impl/RendererFactory;->rootPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".impl.prism.PrRenderer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 118
    .local v1, "klass":Ljava/lang/Class;
    move-object v3, v1

    const-string v4, "createRenderer"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Lcom/sun/scenario/effect/FilterContext;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 120
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/impl/Renderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 126
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return-object v0

    .line 121
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 122
    .local v1, "e":Ljava/lang/Throwable;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private static createRSLRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 10

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/scenario/effect/impl/RendererFactory;->rootPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".impl.j2d.rsl.RSLRenderer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 93
    .local v1, "klass":Ljava/lang/Class;
    move-object v3, v1

    const-string v4, "createRenderer"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Lcom/sun/scenario/effect/FilterContext;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 95
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/impl/Renderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 98
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return-object v0

    .line 96
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 98
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method static createRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/scenario/effect/impl/RendererFactory$$Lambda$1;->lambdaFactory$(Lcom/sun/scenario/effect/FilterContext;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/Renderer;

    move-object v0, v1

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0
.end method

.method private static getJavaRenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 11

    .prologue
    .line 147
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sun/scenario/effect/impl/RendererFactory;->rootPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".impl.prism.sw.PSWRenderer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    .line 148
    .local v0, "klass":Ljava/lang/Class;
    const-string v4, "com.sun.glass.ui.Screen"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 149
    .local v1, "screenClass":Ljava/lang/Class;
    move-object v4, v0

    const-string v5, "createJSWInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v2, v4

    .line 151
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 152
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/Renderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 153
    .local v3, "jswRenderer":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 154
    move-object v4, v3

    move-object v0, v4

    .line 157
    .end local v0    # "klass":Ljava/lang/Class;
    .end local v1    # "screenClass":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "jswRenderer":Lcom/sun/scenario/effect/impl/Renderer;
    :goto_0
    return-object v0

    .line 156
    .line 157
    :cond_0
    :goto_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 156
    .restart local v0    # "klass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, "e":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static getJavaRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 11

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sun/scenario/effect/impl/RendererFactory;->rootPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".impl.prism.sw.PSWRenderer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 163
    .local v1, "klass":Ljava/lang/Class;
    move-object v4, v1

    const-string v5, "createJSWInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-class v9, Lcom/sun/scenario/effect/FilterContext;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v2, v4

    .line 165
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    .line 166
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/impl/Renderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 167
    .local v3, "jswRenderer":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 168
    move-object v4, v3

    move-object v0, v4

    .line 171
    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return-object v0

    .line 170
    .line 171
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "jswRenderer":Lcom/sun/scenario/effect/impl/Renderer;
    .restart local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 170
    :catch_0
    move-exception v4

    move-object v1, v4

    goto :goto_1
.end method

.method private static getSSERenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 7

    .prologue
    .line 130
    sget-boolean v3, Lcom/sun/scenario/effect/impl/RendererFactory;->trySIMD:Z

    if-eqz v3, :cond_1

    .line 132
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/scenario/effect/impl/RendererFactory;->rootPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".impl.j2d.J2DSWRenderer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 133
    .local v0, "klass":Ljava/lang/Class;
    move-object v3, v0

    const-string v4, "getSSEInstance"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v1, v3

    .line 134
    .local v1, "m":Ljava/lang/reflect/Method;
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/impl/Renderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 135
    .local v2, "sseRenderer":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 136
    move-object v3, v2

    move-object v0, v3

    .line 142
    .end local v0    # "klass":Ljava/lang/Class;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "sseRenderer":Lcom/sun/scenario/effect/impl/Renderer;
    :goto_0
    return-object v0

    .line 138
    .line 140
    :cond_0
    :goto_1
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sun/scenario/effect/impl/RendererFactory;->trySIMD:Z

    .line 142
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 138
    .restart local v0    # "klass":Ljava/lang/Class;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Throwable;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static getSoftwareRenderer()Lcom/sun/scenario/effect/impl/Renderer;
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/sun/scenario/effect/impl/RendererFactory;->getSSERenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v1

    move-object v0, v1

    .line 176
    .local v0, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 177
    invoke-static {}, Lcom/sun/scenario/effect/impl/RendererFactory;->getJavaRenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v1

    move-object v0, v1

    .line 179
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "r":Lcom/sun/scenario/effect/impl/Renderer;
    return-object v0
.end method

.method private static isRSLAvailable(Lcom/sun/scenario/effect/FilterContext;)Z
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/FilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/scenario/effect/impl/RendererFactory;->isRSLFriendly(Ljava/lang/Class;)Z

    move-result v1

    move v0, v1

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return v0
.end method

.method private static isRSLFriendly(Ljava/lang/Class;)Z
    .locals 8

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "klass":Ljava/lang/Class;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sun.java2d.pipe.hw.AccelGraphicsConfig"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    const/4 v6, 0x1

    move v0, v6

    .line 83
    .end local v0    # "klass":Ljava/lang/Class;
    .local v1, "rsl":Z
    :goto_0
    return v0

    .line 76
    .end local v1    # "rsl":Z
    .restart local v0    # "klass":Ljava/lang/Class;
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 77
    .restart local v1    # "rsl":Z
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 78
    .local v5, "iface":Ljava/lang/Class;
    move-object v6, v5

    invoke-static {v6}, Lcom/sun/scenario/effect/impl/RendererFactory;->isRSLFriendly(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    const/4 v6, 0x1

    move v1, v6

    .line 83
    .end local v5    # "iface":Ljava/lang/Class;
    :cond_1
    move v6, v1

    move v0, v6

    goto :goto_0

    .line 77
    .restart local v5    # "iface":Ljava/lang/Class;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static synthetic lambda$createRenderer$466(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    const/4 v4, 0x0

    move-object v1, v4

    .line 186
    .local v1, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 187
    .local v2, "klassName":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v2

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 189
    .local v3, "simpleName":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "PrFilterContext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/sun/scenario/effect/impl/RendererFactory;->tryPrism:Z

    if-eqz v4, :cond_0

    .line 190
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/RendererFactory;->createPrismRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v1, v4

    .line 195
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/sun/scenario/effect/impl/RendererFactory;->tryRSL:Z

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/RendererFactory;->isRSLAvailable(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/RendererFactory;->createRSLRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v1, v4

    .line 202
    :cond_1
    move-object v4, v1

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/sun/scenario/effect/impl/RendererFactory;->tryJOGL:Z

    if-eqz v4, :cond_2

    .line 204
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/RendererFactory;->createJOGLRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v1, v4

    .line 206
    :cond_2
    move-object v4, v1

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/sun/scenario/effect/impl/RendererFactory;->trySIMD:Z

    if-eqz v4, :cond_3

    .line 208
    invoke-static {}, Lcom/sun/scenario/effect/impl/RendererFactory;->getSSERenderer()Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v1, v4

    .line 210
    :cond_3
    move-object v4, v1

    if-nez v4, :cond_4

    .line 212
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/scenario/effect/impl/RendererFactory;->getJavaRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v1, v4

    .line 214
    :cond_4
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0
.end method
