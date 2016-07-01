.class public final Lcom/sun/prism/impl/PrismSettings;
.super Ljava/lang/Object;
.source "PrismSettings.java"


# static fields
.field public static final allowHiDPIScaling:Z

.field public static final cacheComplexShapes:Z

.field public static final cacheSimpleShapes:Z

.field public static final debug:Z

.field public static final dirtyOptsEnabled:Z

.field public static final dirtyRegionCount:I

.field public static final disableBadDriverWarning:Z

.field public static final disableD3D9Ex:Z

.field public static final disableEffects:Z

.field public static final disableRegionCaching:Z

.field public static final doNativePisces:Z

.field public static final forceAlphaTestShader:Z

.field public static final forceGPU:Z

.field public static final forceNonAntialiasedShape:Z

.field public static final forcePow2:Z

.field public static final forceRepaint:Z

.field public static final forceUploadingPainter:Z

.field public static final glyphCacheHeight:I

.field public static final glyphCacheWidth:I

.field public static final isVsyncEnabled:Z

.field public static final maxTextureSize:I

.field public static final maxVram:J

.field public static final minRTTSize:I

.field public static final noClampToZero:Z

.field public static final noFallback:Z

.field public static final occlusionCullingEnabled:Z

.field public static final perfLog:Ljava/lang/String;

.field public static final perfLogExitFlush:Z

.field public static final perfLogFirstPaintExit:Z

.field public static final perfLogFirstPaintFlush:Z

.field public static final poolDebug:Z

.field public static final poolStats:Z

.field public static final primTextureSize:I

.field public static final printAllocs:Z

.field public static final printRenderGraph:Z

.field public static final prismStatFrequency:I

.field public static final refType:Ljava/lang/String;

.field public static final scrollCacheOpt:Z

.field public static final showDirtyRegions:Z

.field public static final showOverdraw:Z

.field public static final skipMeshNormalComputation:Z

.field public static final superShader:Z

.field public static final targetVram:J

.field public static final threadCheck:Z

.field public static final trace:Z

.field public static final tryOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final useNewImageLoader:Z

.field public static final verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 107
    invoke-static {}, Lcom/sun/prism/impl/PrismSettings$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v8

    .line 108
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Properties;

    move-object v0, v8

    .line 112
    .local v0, "systemProperties":Ljava/util/Properties;
    move-object v8, v0

    const-string v9, "prism.vsync"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    const-string v9, "javafx.animation.fullspeed"

    const/4 v10, 0x0

    .line 113
    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->isVsyncEnabled:Z

    .line 118
    move-object v8, v0

    const-string v9, "prism.dirtyopts"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    .line 120
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    if-eqz v8, :cond_3

    move-object v8, v0

    const-string v9, "prism.occlusion.culling"

    const/4 v10, 0x1

    .line 121
    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->occlusionCullingEnabled:Z

    .line 127
    const/4 v8, 0x0

    move-object v9, v0

    const-string v10, "prism.dirtyregioncount"

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/sun/prism/impl/PrismSettings;->getInt(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    const/16 v10, 0xf

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v8

    sput v8, Lcom/sun/prism/impl/PrismSettings;->dirtyRegionCount:I

    .line 131
    move-object v8, v0

    const-string v9, "prism.scrollcacheopt"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->scrollCacheOpt:Z

    .line 134
    move-object v8, v0

    const-string v9, "prism.threadcheck"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->threadCheck:Z

    .line 137
    move-object v8, v0

    const-string v9, "prism.showdirty"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->showDirtyRegions:Z

    .line 143
    move-object v8, v0

    const-string v9, "prism.showoverdraw"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->showOverdraw:Z

    .line 146
    move-object v8, v0

    const-string v9, "prism.printrendergraph"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->printRenderGraph:Z

    .line 149
    move-object v8, v0

    const-string v9, "prism.forcerepaint"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->forceRepaint:Z

    .line 152
    move-object v8, v0

    const-string v9, "prism.noFallback"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->noFallback:Z

    .line 155
    move-object v8, v0

    const-string v9, "prism.cacheshapes"

    const-string v10, "complex"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 157
    .local v1, "cache":Ljava/lang/String;
    const-string v8, "all"

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "true"

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 158
    :cond_0
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->cacheSimpleShapes:Z

    .line 159
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->cacheComplexShapes:Z

    .line 169
    :goto_2
    move-object v8, v0

    const-string v9, "prism.newiio"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->useNewImageLoader:Z

    .line 172
    move-object v8, v0

    const-string v9, "prism.verbose"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    .line 175
    move-object v8, v0

    const-string v9, "prism.printStats"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "Try -Dprism.printStats=<true or number>"

    .line 176
    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/PrismSettings;->getInt(Ljava/util/Properties;Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    sput v8, Lcom/sun/prism/impl/PrismSettings;->prismStatFrequency:I

    .line 180
    move-object v8, v0

    const-string v9, "prism.debug"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->debug:Z

    .line 183
    move-object v8, v0

    const-string v9, "prism.trace"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->trace:Z

    .line 186
    move-object v8, v0

    const-string v9, "prism.printallocs"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->printAllocs:Z

    .line 189
    move-object v8, v0

    const-string v9, "prism.disableBadDriverWarning"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->disableBadDriverWarning:Z

    .line 194
    move-object v8, v0

    const-string v9, "prism.forceGPU"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->forceGPU:Z

    .line 197
    move-object v8, v0

    const-string v9, "prism.experimental.skipMeshNormalComputation"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->skipMeshNormalComputation:Z

    .line 200
    move-object v8, v0

    const-string v9, "prism.order"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 202
    .local v2, "order":Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_6

    .line 203
    move-object v8, v2

    const-string v9, ","

    invoke-static {v8, v9}, Lcom/sun/prism/impl/PrismSettings;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 220
    .local v3, "tryOrderArr":[Ljava/lang/String;
    :goto_3
    move-object v8, v3

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/sun/prism/impl/PrismSettings;->tryOrder:Ljava/util/List;

    .line 222
    move-object v8, v0

    const-string v9, "prism.nativepisces"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 223
    .local v4, "npprop":Ljava/lang/String;
    move-object v8, v4

    if-nez v8, :cond_d

    .line 224
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v8

    if-nez v8, :cond_c

    :cond_1
    const/4 v8, 0x1

    :goto_4
    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->doNativePisces:Z

    .line 229
    :goto_5
    move-object v8, v0

    const-string v9, "prism.primtextures"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 230
    .local v5, "primtex":Ljava/lang/String;
    move-object v8, v5

    if-nez v8, :cond_f

    .line 231
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, -0x1

    :goto_6
    sput v8, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    .line 243
    :goto_7
    move-object v8, v0

    const-string v9, "prism.reftype"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/sun/prism/impl/PrismSettings;->refType:Ljava/lang/String;

    .line 245
    move-object v8, v0

    const-string v9, "prism.forcepowerof2"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->forcePow2:Z

    .line 246
    move-object v8, v0

    const-string v9, "prism.noclamptozero"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->noClampToZero:Z

    .line 248
    move-object v8, v0

    const-string v9, "prism.allowhidpi"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    .line 250
    move-object v8, v0

    const-string v9, "prism.maxvram"

    const-wide/32 v10, 0x20000000

    const-string v12, "Try -Dprism.maxvram=<long>[kKmMgG]"

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/PrismSettings;->getLong(Ljava/util/Properties;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/sun/prism/impl/PrismSettings;->maxVram:J

    .line 252
    move-object v8, v0

    const-string v9, "prism.targetvram"

    sget-wide v10, Lcom/sun/prism/impl/PrismSettings;->maxVram:J

    const-wide/16 v12, 0x8

    div-long/2addr v10, v12

    sget-wide v12, Lcom/sun/prism/impl/PrismSettings;->maxVram:J

    const-string v14, "Try -Dprism.targetvram=<long>[kKmMgG]|<double(0,100)>%"

    invoke-static/range {v8 .. v14}, Lcom/sun/prism/impl/PrismSettings;->getLong(Ljava/util/Properties;Ljava/lang/String;JJLjava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/sun/prism/impl/PrismSettings;->targetVram:J

    .line 254
    move-object v8, v0

    const-string v9, "prism.poolstats"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->poolStats:Z

    .line 255
    move-object v8, v0

    const-string v9, "prism.pooldebug"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    .line 257
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v8, :cond_13

    .line 258
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Prism pipeline init order: "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 259
    sget-object v8, Lcom/sun/prism/impl/PrismSettings;->tryOrder:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_8
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    .line 260
    .local v7, "s":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 261
    goto :goto_8

    .line 113
    .end local v1    # "cache":Ljava/lang/String;
    .end local v2    # "order":Ljava/lang/String;
    .end local v3    # "tryOrderArr":[Ljava/lang/String;
    .end local v4    # "npprop":Ljava/lang/String;
    .end local v5    # "primtex":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 121
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 160
    .restart local v1    # "cache":Ljava/lang/String;
    :cond_4
    const-string v8, "complex"

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 161
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->cacheSimpleShapes:Z

    .line 162
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->cacheComplexShapes:Z

    goto/16 :goto_2

    .line 164
    :cond_5
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->cacheSimpleShapes:Z

    .line 165
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->cacheComplexShapes:Z

    goto/16 :goto_2

    .line 205
    .restart local v2    # "order":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 206
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    const-string v11, "d3d"

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    const-string v11, "sw"

    aput-object v11, v9, v10

    move-object v3, v8

    .restart local v3    # "tryOrderArr":[Ljava/lang/String;
    goto/16 :goto_3

    .line 207
    .end local v3    # "tryOrderArr":[Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 208
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    const-string v11, "es2"

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    const-string v11, "sw"

    aput-object v11, v9, v10

    move-object v3, v8

    .restart local v3    # "tryOrderArr":[Ljava/lang/String;
    goto/16 :goto_3

    .line 209
    .end local v3    # "tryOrderArr":[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 210
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    const-string v11, "es2"

    aput-object v11, v9, v10

    move-object v3, v8

    .restart local v3    # "tryOrderArr":[Ljava/lang/String;
    goto/16 :goto_3

    .line 211
    .end local v3    # "tryOrderArr":[Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 212
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    const-string v11, "es2"

    aput-object v11, v9, v10

    move-object v3, v8

    .restart local v3    # "tryOrderArr":[Ljava/lang/String;
    goto/16 :goto_3

    .line 213
    .end local v3    # "tryOrderArr":[Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 214
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    const-string v11, "es2"

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    const-string v11, "sw"

    aput-object v11, v9, v10

    move-object v3, v8

    .restart local v3    # "tryOrderArr":[Ljava/lang/String;
    goto/16 :goto_3

    .line 216
    .end local v3    # "tryOrderArr":[Ljava/lang/String;
    :cond_b
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    const-string v11, "sw"

    aput-object v11, v9, v10

    move-object v3, v8

    .restart local v3    # "tryOrderArr":[Ljava/lang/String;
    goto/16 :goto_3

    .line 224
    .restart local v4    # "npprop":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 226
    :cond_d
    move-object v8, v4

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->doNativePisces:Z

    goto/16 :goto_5

    .line 231
    .restart local v5    # "primtex":Ljava/lang/String;
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 232
    :cond_f
    move-object v8, v5

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 233
    const/4 v8, -0x1

    sput v8, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    goto/16 :goto_7

    .line 234
    :cond_10
    move-object v8, v5

    const-string v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 235
    const/4 v8, 0x0

    sput v8, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    goto/16 :goto_7

    .line 237
    :cond_11
    move-object v8, v5

    const/4 v9, 0x0

    const-string v10, "Try -Dprism.primtextures=[true|false|<number>]"

    .line 238
    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->parseInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    sput v8, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    goto/16 :goto_7

    .line 262
    :cond_12
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->doNativePisces:Z

    if-eqz v8, :cond_15

    const-string v8, "native"

    :goto_9
    move-object v6, v8

    .line 264
    .local v6, "piscestype":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-based Pisces rasterizer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    const-string v9, "Using dirty region optimizations"

    invoke-static {v8, v9}, Lcom/sun/prism/impl/PrismSettings;->printBooleanOption(ZLjava/lang/String;)V

    .line 266
    sget v8, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-nez v8, :cond_16

    .line 267
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Not using texture mask for primitives"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    :goto_a
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->forcePow2:Z

    const-string v9, "Forcing power of 2 sizes for textures"

    invoke-static {v8, v9}, Lcom/sun/prism/impl/PrismSettings;->printBooleanOption(ZLjava/lang/String;)V

    .line 274
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->noClampToZero:Z

    if-nez v8, :cond_18

    const/4 v8, 0x1

    :goto_b
    const-string v9, "Using hardware CLAMP_TO_ZERO mode"

    invoke-static {v8, v9}, Lcom/sun/prism/impl/PrismSettings;->printBooleanOption(ZLjava/lang/String;)V

    .line 275
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->allowHiDPIScaling:Z

    const-string v9, "Opting in for HiDPI pixel scaling"

    invoke-static {v8, v9}, Lcom/sun/prism/impl/PrismSettings;->printBooleanOption(ZLjava/lang/String;)V

    .line 288
    .end local v6    # "piscestype":Ljava/lang/String;
    :cond_13
    move-object v8, v0

    const-string v9, "prism.maxTextureSize"

    const/16 v10, 0x1000

    const-string v11, "Try -Dprism.maxTextureSize=<number>"

    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/impl/PrismSettings;->getInt(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    move v6, v8

    .line 291
    .local v6, "size":I
    move v8, v6

    if-gtz v8, :cond_14

    .line 292
    const v8, 0x7fffffff

    move v6, v8

    .line 294
    :cond_14
    move v8, v6

    sput v8, Lcom/sun/prism/impl/PrismSettings;->maxTextureSize:I

    .line 301
    move-object v8, v0

    const-string v9, "prism.minrttsize"

    .line 302
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v10

    if-eqz v10, :cond_19

    const/16 v10, 0x10

    :goto_c
    const-string v11, "Try -Dprism.minrttsize=<number>"

    .line 301
    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/impl/PrismSettings;->getInt(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    sput v8, Lcom/sun/prism/impl/PrismSettings;->minRTTSize:I

    .line 304
    move-object v8, v0

    const-string v9, "prism.disableRegionCaching"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->disableRegionCaching:Z

    .line 308
    move-object v8, v0

    const-string v9, "prism.disableD3D9Ex"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->disableD3D9Ex:Z

    .line 310
    move-object v8, v0

    const-string v9, "prism.disableEffects"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->disableEffects:Z

    .line 312
    move-object v8, v0

    const-string v9, "prism.glyphCacheWidth"

    const/16 v10, 0x400

    const-string v11, "Try -Dprism.glyphCacheWidth=<number>"

    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/impl/PrismSettings;->getInt(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    sput v8, Lcom/sun/prism/impl/PrismSettings;->glyphCacheWidth:I

    .line 314
    move-object v8, v0

    const-string v9, "prism.glyphCacheHeight"

    const/16 v10, 0x400

    const-string v11, "Try -Dprism.glyphCacheHeight=<number>"

    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/impl/PrismSettings;->getInt(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    sput v8, Lcom/sun/prism/impl/PrismSettings;->glyphCacheHeight:I

    .line 321
    move-object v8, v0

    const-string v9, "sun.perflog"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/sun/prism/impl/PrismSettings;->perfLog:Ljava/lang/String;

    .line 322
    move-object v8, v0

    const-string v9, "sun.perflog.fx.exitflush"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;ZZ)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->perfLogExitFlush:Z

    .line 323
    move-object v8, v0

    const-string v9, "sun.perflog.fx.firstpaintflush"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;ZZ)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->perfLogFirstPaintFlush:Z

    .line 324
    move-object v8, v0

    const-string v9, "sun.perflog.fx.firstpaintexit"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;ZZ)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->perfLogFirstPaintExit:Z

    .line 326
    move-object v8, v0

    const-string v9, "prism.supershader"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->superShader:Z

    .line 329
    move-object v8, v0

    const-string v9, "prism.forceUploadingPainter"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->forceUploadingPainter:Z

    .line 332
    move-object v8, v0

    const-string v9, "prism.forceAlphaTestShader"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->forceAlphaTestShader:Z

    .line 335
    move-object v8, v0

    const-string v9, "prism.forceNonAntialiasedShape"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sun/prism/impl/PrismSettings;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/sun/prism/impl/PrismSettings;->forceNonAntialiasedShape:Z

    .line 337
    return-void

    .line 263
    .end local v6    # "size":I
    :cond_15
    const-string v8, "java"

    goto/16 :goto_9

    .line 268
    .local v6, "piscestype":Ljava/lang/String;
    :cond_16
    sget v8, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-gez v8, :cond_17

    .line 269
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Using system sized mask for primitives"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 271
    :cond_17
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sized mask for primitives"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 274
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 302
    .local v6, "size":I
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_c
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/PrismSettings;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/prism/impl/PrismSettings;->lambda$static$451()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getBoolean(Ljava/util/Properties;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "properties":Ljava/util/Properties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "dflt":Z
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 417
    .local v3, "strval":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    move v0, v4

    .end local v0    # "properties":Ljava/util/Properties;
    return v0

    .restart local v0    # "properties":Ljava/util/Properties;
    :cond_0
    move v4, v2

    goto :goto_0
.end method

.method private static getBoolean(Ljava/util/Properties;Ljava/lang/String;ZZ)Z
    .locals 7

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "properties":Ljava/util/Properties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "dflt":Z
    move v3, p3

    .local v3, "dfltIfDefined":Z
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 425
    .local v4, "strval":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v3

    move v0, v5

    .line 426
    .end local v0    # "properties":Ljava/util/Properties;
    :goto_0
    return v0

    .restart local v0    # "properties":Ljava/util/Properties;
    :cond_0
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_1
.end method

.method private static getInt(Ljava/util/Properties;Ljava/lang/String;IILjava/lang/String;)I
    .locals 9

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "properties":Ljava/util/Properties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "dflt":I
    move v3, p3

    .local v3, "trueDflt":I
    move-object v4, p4

    .local v4, "errMsg":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-static {v5, v6, v7, v8}, Lcom/sun/prism/impl/PrismSettings;->parseInt(Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    move v0, v5

    .end local v0    # "properties":Ljava/util/Properties;
    return v0
.end method

.method private static getInt(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)I
    .locals 7

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "properties":Ljava/util/Properties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "dflt":I
    move-object v3, p3

    .local v3, "errMsg":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/sun/prism/impl/PrismSettings;->parseInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    move v0, v4

    .end local v0    # "properties":Ljava/util/Properties;
    return v0
.end method

.method private static getLong(Ljava/util/Properties;Ljava/lang/String;JJLjava/lang/String;)J
    .locals 14

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "properties":Ljava/util/Properties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "dflt":J
    move-wide/from16 v4, p4

    .local v4, "rel":J
    move-object/from16 v6, p6

    .local v6, "errMsg":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide v8, v2

    move-wide v10, v4

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lcom/sun/prism/impl/PrismSettings;->parseLong(Ljava/lang/String;JJLjava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    .end local v0    # "properties":Ljava/util/Properties;
    return-wide v0
.end method

.method private static getLong(Ljava/util/Properties;Ljava/lang/String;JLjava/lang/String;)J
    .locals 12

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "properties":Ljava/util/Properties;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "dflt":J
    move-object/from16 v4, p4

    .local v4, "errMsg":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-wide v6, v2

    const-wide/16 v8, 0x0

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/sun/prism/impl/PrismSettings;->parseLong(Ljava/lang/String;JJLjava/lang/String;)J

    move-result-wide v5

    move-wide v0, v5

    .end local v0    # "properties":Ljava/util/Properties;
    return-wide v0
.end method

.method private static synthetic lambda$static$451()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;IILjava/lang/String;)I
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move v1, p1

    .local v1, "dflt":I
    move v2, p2

    .local v2, "trueDflt":I
    move-object v3, p3

    .local v3, "errMsg":Ljava/lang/String;
    const-string v4, "true"

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    .line 343
    :goto_0
    move v0, v4

    .end local v0    # "s":Ljava/lang/String;
    return v0

    .line 341
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    .line 343
    invoke-static {v4, v5, v6}, Lcom/sun/prism/impl/PrismSettings;->parseInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method private static parseInt(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move v1, p1

    .local v1, "dflt":I
    move-object v2, p2

    .local v2, "errMsg":Ljava/lang/String;
    move-object v4, v0

    if-eqz v4, :cond_0

    .line 349
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 357
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return v0

    .line 350
    .restart local v0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 351
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 352
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method private static parseLong(Ljava/lang/String;JJLjava/lang/String;)J
    .locals 15

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-wide/from16 v1, p1

    .local v1, "dflt":J
    move-wide/from16 v3, p3

    .local v3, "rel":J
    move-object/from16 v5, p5

    .local v5, "errMsg":Ljava/lang/String;
    move-object v10, v0

    if-eqz v10, :cond_a

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 362
    const-wide/16 v10, 0x1

    move-wide v6, v10

    .line 363
    .local v6, "mult":J
    move-object v10, v0

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 364
    move-wide v10, v3

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 366
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v0

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 367
    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-wide v8, v10

    .line 368
    .local v8, "percent":D
    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v8

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    .line 369
    move-wide v10, v3

    long-to-double v10, v10

    move-wide v12, v8

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    move-wide v0, v10

    .line 399
    .end local v0    # "s":Ljava/lang/String;
    .end local v6    # "mult":J
    .end local v8    # "percent":D
    :goto_0
    return-wide v0

    .line 372
    .line 375
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v6    # "mult":J
    :cond_0
    :goto_1
    move-object v10, v5

    if-eqz v10, :cond_1

    .line 376
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_1
    move-wide v10, v1

    move-wide v0, v10

    goto :goto_0

    .line 371
    :catch_0
    move-exception v10

    move-object v8, v10

    goto :goto_1

    .line 380
    :cond_2
    move-object v10, v0

    const-string v11, "k"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v0

    const-string v11, "K"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 381
    :cond_3
    const-wide/16 v10, 0x400

    move-wide v6, v10

    .line 387
    :cond_4
    :goto_2
    move-wide v10, v6

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 388
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 391
    :cond_5
    move-object v10, v0

    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    move-wide v12, v6

    mul-long/2addr v10, v12

    move-wide v0, v10

    goto :goto_0

    .line 382
    :cond_6
    move-object v10, v0

    const-string v11, "m"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    move-object v10, v0

    const-string v11, "M"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 383
    :cond_7
    const-wide/32 v10, 0x100000

    move-wide v6, v10

    goto :goto_2

    .line 384
    :cond_8
    move-object v10, v0

    const-string v11, "g"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    move-object v10, v0

    const-string v11, "G"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 385
    :cond_9
    const-wide/32 v10, 0x40000000

    move-wide v6, v10

    goto :goto_2

    .line 392
    :catch_1
    move-exception v10

    move-object v8, v10

    .line 393
    .local v8, "e":Ljava/lang/Exception;
    move-object v10, v5

    if-eqz v10, :cond_a

    .line 394
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    .end local v6    # "mult":J
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a
    move-wide v10, v1

    move-wide v0, v10

    goto :goto_0
.end method

.method private static printBooleanOption(ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 97
    move v0, p0

    .local v0, "opt":Z
    move-object v1, p1

    .local v1, "trueStr":Ljava/lang/String;
    move v2, v0

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Not "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 101
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 102
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, p1

    .local v1, "delim":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 405
    .local v2, "st":Ljava/util/StringTokenizer;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v3, v5

    .line 406
    .local v3, "ret":[Ljava/lang/String;
    const/4 v5, 0x0

    move v4, v5

    .line 407
    .local v4, "i":I
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_0

    .line 410
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method
