.class Lcom/sun/prism/es2/GLGPUInfo;
.super Ljava/lang/Object;
.source "GLGPUInfo.java"


# instance fields
.field final model:Ljava/lang/String;

.field final vendor:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLGPUInfo;
    move-object v1, p1

    .local v1, "vendor":Ljava/lang/String;
    move-object v2, p2

    .local v2, "model":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/prism/es2/GLGPUInfo;->vendor:Ljava/lang/String;

    .line 39
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/es2/GLGPUInfo;->model:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method matches(Lcom/sun/prism/es2/GLGPUInfo;)Z
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLGPUInfo;
    move-object v1, p1

    .local v1, "gi":Lcom/sun/prism/es2/GLGPUInfo;
    const/4 v3, 0x1

    move v2, v3

    .line 55
    .local v2, "result":Z
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/GLGPUInfo;->vendor:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/GLGPUInfo;->vendor:Ljava/lang/String;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/es2/GLGPUInfo;->vendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    .line 58
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/GLGPUInfo;->model:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 59
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/GLGPUInfo;->model:Ljava/lang/String;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/es2/GLGPUInfo;->model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    move v2, v3

    .line 61
    :cond_1
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/es2/GLGPUInfo;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLGPUInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLGPUInfo [vendor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/GLGPUInfo;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", model = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/GLGPUInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLGPUInfo;
    return-object v0
.end method
