.class public abstract Lcom/sun/prism/GraphicsPipeline;
.super Ljava/lang/Object;
.source "GraphicsPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/GraphicsPipeline$ShaderModel;,
        Lcom/sun/prism/GraphicsPipeline$ShaderType;
    }
.end annotation


# static fields
.field private static installedPipeline:Lcom/sun/prism/GraphicsPipeline;


# instance fields
.field protected deviceDetails:Ljava/util/Map;

.field private fontFactory:Lcom/sun/javafx/font/FontFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 130
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/GraphicsPipeline;->deviceDetails:Ljava/util/Map;

    return-void
.end method

.method public static createPipeline()Lcom/sun/prism/GraphicsPipeline;
    .locals 11

    .prologue
    .line 150
    sget-object v6, Lcom/sun/prism/impl/PrismSettings;->tryOrder:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v6, :cond_0

    .line 153
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "No Prism pipelines specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 229
    .local v2, "className":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 158
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/sun/prism/GraphicsPipeline;->installedPipeline:Lcom/sun/prism/GraphicsPipeline;

    if-eqz v6, :cond_2

    .line 159
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pipeline already created:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sun/prism/GraphicsPipeline;->installedPipeline:Lcom/sun/prism/GraphicsPipeline;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    :cond_2
    sget-object v6, Lcom/sun/prism/impl/PrismSettings;->tryOrder:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v6

    .local v1, "prefix":Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    :goto_1
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 164
    const-string v6, "j2d"

    .end local v2    # "className":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "WARNING: The prism-j2d pipeline should not be used as the software"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "fallback pipeline. It is no longer tested nor intended to be used for"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "on-screen rendering. Please use the prism-sw pipeline instead by setting"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "the \"prism.order\" system property to \"sw\" rather than \"j2d\"."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    :cond_3
    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v6, :cond_5

    .line 176
    const-string v6, "j2d"

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "sw"

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    :cond_4
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "*** Fallback to Prism SW pipeline"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.sun.prism."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    .line 182
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pipeline"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 184
    .restart local v2    # "className":Ljava/lang/String;
    :try_start_0
    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v6, :cond_6

    .line 185
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prism pipeline name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    :cond_6
    move-object v6, v2

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 188
    .local v3, "klass":Ljava/lang/Class;
    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v6, :cond_7

    .line 189
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(X) Got class = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    :cond_7
    move-object v6, v3

    const-string v7, "getInstance"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v4, v6

    .line 192
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    .line 193
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/prism/GraphicsPipeline;

    move-object v5, v6

    .line 194
    .local v5, "newPipeline":Lcom/sun/prism/GraphicsPipeline;
    move-object v6, v5

    if-eqz v6, :cond_9

    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/prism/GraphicsPipeline;->init()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 195
    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v6, :cond_8

    .line 196
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialized prism pipeline: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    .line 197
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    :cond_8
    move-object v6, v5

    sput-object v6, Lcom/sun/prism/GraphicsPipeline;->installedPipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 200
    sget-object v6, Lcom/sun/prism/GraphicsPipeline;->installedPipeline:Lcom/sun/prism/GraphicsPipeline;

    move-object v0, v6

    goto/16 :goto_0

    .line 202
    :cond_9
    move-object v6, v5

    if-eqz v6, :cond_a

    .line 203
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/prism/GraphicsPipeline;->dispose()V

    .line 204
    const/4 v6, 0x0

    move-object v5, v6

    .line 206
    :cond_a
    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v6, :cond_b

    .line 207
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GraphicsPipeline.createPipeline: error initializing pipeline "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .end local v3    # "klass":Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "newPipeline":Lcom/sun/prism/GraphicsPipeline;
    :cond_b
    :goto_2
    goto/16 :goto_1

    .line 210
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 211
    .local v3, "t":Ljava/lang/Throwable;
    sget-boolean v6, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v6, :cond_b

    .line 212
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GraphicsPipeline.createPipeline failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 218
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_c
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Graphics Device initialization failed for :  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 219
    .local v0, "sBuf":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/sun/prism/impl/PrismSettings;->tryOrder:Ljava/util/List;

    .line 220
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    .line 221
    .local v1, "orderIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 222
    move-object v6, v0

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 223
    :goto_3
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 224
    move-object v6, v0

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 225
    move-object v6, v0

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_3

    .line 228
    :cond_d
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 229
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 120
    .local v0, "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory(Ljava/util/List;)Lcom/sun/prism/ResourceFactory;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    return-object v0
.end method

.method public static getPipeline()Lcom/sun/prism/GraphicsPipeline;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/sun/prism/GraphicsPipeline;->installedPipeline:Lcom/sun/prism/GraphicsPipeline;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/prism/GraphicsPipeline;->installedPipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 63
    return-void
.end method

.method public abstract getAdapterOrdinal(Lcom/sun/glass/ui/Screen;)I
.end method

.method public abstract getDefaultResourceFactory(Ljava/util/List;)Lcom/sun/prism/ResourceFactory;
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
.end method

.method public getDeviceDetails()Ljava/util/Map;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/GraphicsPipeline;->deviceDetails:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/GraphicsPipeline;
    return-object v0
.end method

.method public getFontFactory()Lcom/sun/javafx/font/FontFactory;
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/GraphicsPipeline;->fontFactory:Lcom/sun/javafx/font/FontFactory;

    if-nez v1, :cond_0

    .line 125
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/prism/GraphicsPipeline;->fontFactory:Lcom/sun/javafx/font/FontFactory;

    .line 127
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/GraphicsPipeline;->fontFactory:Lcom/sun/javafx/font/FontFactory;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/GraphicsPipeline;
    return-object v0
.end method

.method public abstract getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;
.end method

.method public abstract init()Z
.end method

.method public abstract is3DSupported()Z
.end method

.method public isEffectSupported()Z
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/GraphicsPipeline;
    return v0
.end method

.method public isMSAASupported()Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/GraphicsPipeline;
    return v0
.end method

.method public isUploading()Z
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->forceUploadingPainter:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/GraphicsPipeline;
    return v0
.end method

.method public abstract isVsyncSupported()Z
.end method

.method protected setDeviceDetails(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    move-object v1, p1

    .local v1, "details":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/GraphicsPipeline;->deviceDetails:Ljava/util/Map;

    .line 145
    return-void
.end method

.method public supportsShader(Lcom/sun/prism/GraphicsPipeline$ShaderType;Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/GraphicsPipeline;
    move-object v1, p1

    .local v1, "type":Lcom/sun/prism/GraphicsPipeline$ShaderType;
    move-object v2, p2

    .local v2, "model":Lcom/sun/prism/GraphicsPipeline$ShaderModel;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/prism/GraphicsPipeline;->supportsShaderType(Lcom/sun/prism/GraphicsPipeline$ShaderType;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/prism/GraphicsPipeline;->supportsShaderModel(Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/GraphicsPipeline;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/GraphicsPipeline;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract supportsShaderModel(Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z
.end method

.method public abstract supportsShaderType(Lcom/sun/prism/GraphicsPipeline$ShaderType;)Z
.end method
