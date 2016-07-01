.class public Lcom/sun/prism/null3d/NULL3DPipeline;
.super Lcom/sun/prism/GraphicsPipeline;
.source "NULL3DPipeline.java"


# static fields
.field static theInstance:Lcom/sun/prism/null3d/NULL3DPipeline;


# instance fields
.field private final factories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/prism/null3d/DummyResourceFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NULL3DPipeline enabled !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/GraphicsPipeline;-><init>()V

    .line 62
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lcom/sun/prism/null3d/NULL3DPipeline;->factories:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/sun/prism/null3d/NULL3DPipeline;
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/sun/prism/null3d/NULL3DPipeline;->theInstance:Lcom/sun/prism/null3d/NULL3DPipeline;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/sun/prism/null3d/NULL3DPipeline;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/prism/null3d/NULL3DPipeline;-><init>()V

    sput-object v0, Lcom/sun/prism/null3d/NULL3DPipeline;->theInstance:Lcom/sun/prism/null3d/NULL3DPipeline;

    .line 51
    :cond_0
    sget-object v0, Lcom/sun/prism/null3d/NULL3DPipeline;->theInstance:Lcom/sun/prism/null3d/NULL3DPipeline;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public getAdapterOrdinal(Lcom/sun/glass/ui/Screen;)I
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    return v0
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
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    move-object v1, p1

    .local v1, "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    move-object v2, v0

    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/prism/null3d/NULL3DPipeline;->getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    return-object v0
.end method

.method public getResourceFactory(Lcom/sun/glass/ui/Screen;)Lcom/sun/prism/ResourceFactory;
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    new-instance v4, Ljava/lang/Integer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Screen;->getAdapterOrdinal()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v4

    .line 73
    .local v2, "index":Ljava/lang/Integer;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/null3d/NULL3DPipeline;->factories:Ljava/util/HashMap;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/prism/null3d/DummyResourceFactory;

    move-object v3, v4

    .line 74
    .local v3, "factory":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 75
    new-instance v4, Lcom/sun/prism/null3d/DummyResourceFactory;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/prism/null3d/DummyResourceFactory;-><init>(Lcom/sun/glass/ui/Screen;)V

    move-object v3, v4

    .line 76
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/null3d/NULL3DPipeline;->factories:Ljava/util/HashMap;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    return-object v0
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    return v0
.end method

.method public is3DSupported()Z
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    return v0
.end method

.method public isMSAASupported()Z
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    return v0
.end method

.method public isVsyncSupported()Z
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    return v0
.end method

.method public supportsShaderModel(Lcom/sun/prism/GraphicsPipeline$ShaderModel;)Z
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    move-object v1, p1

    .local v1, "model":Lcom/sun/prism/GraphicsPipeline$ShaderModel;
    sget-object v2, Lcom/sun/prism/null3d/NULL3DPipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderModel:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 114
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    :goto_0
    return v0

    .line 113
    .restart local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    :pswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsShaderType(Lcom/sun/prism/GraphicsPipeline$ShaderType;)Z
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    move-object v1, p1

    .local v1, "type":Lcom/sun/prism/GraphicsPipeline$ShaderType;
    sget-object v2, Lcom/sun/prism/null3d/NULL3DPipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderType:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/GraphicsPipeline$ShaderType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 106
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    :goto_0
    return v0

    .line 104
    .restart local v0    # "this":Lcom/sun/prism/null3d/NULL3DPipeline;
    :pswitch_0
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
