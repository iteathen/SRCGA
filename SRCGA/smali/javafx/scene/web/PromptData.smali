.class public final Ljavafx/scene/web/PromptData;
.super Ljava/lang/Object;
.source "PromptData.java"


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PromptData;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/web/PromptData;->message:Ljava/lang/String;

    .line 47
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/web/PromptData;->defaultValue:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PromptData;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/PromptData;->defaultValue:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/PromptData;
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/PromptData;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/PromptData;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/PromptData;
    return-object v0
.end method
