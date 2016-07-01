.class public Lcom/sun/javafx/css/CssError;
.super Ljava/lang/Object;
.source "CssError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/CssError$PropertySetError;,
        Lcom/sun/javafx/css/CssError$StringParsingError;,
        Lcom/sun/javafx/css/CssError$InlineStyleParsingError;,
        Lcom/sun/javafx/css/CssError$StylesheetParsingError;
    }
.end annotation


# static fields
.field private static SCENE_REF:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljavafx/scene/Scene;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final message:Ljava/lang/String;

.field private final sceneRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljavafx/scene/Scene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/CssError;->message:Ljava/lang/String;

    .line 75
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/css/CssError;->SCENE_REF:Ljava/lang/ref/Reference;

    iput-object v3, v2, Lcom/sun/javafx/css/CssError;->sceneRef:Ljava/lang/ref/Reference;

    .line 76
    return-void
.end method

.method public static setCurrentScene(Ljavafx/scene/Scene;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    move-object v2, v0

    if-eqz v2, :cond_3

    .line 58
    sget-object v2, Lcom/sun/javafx/css/CssError;->SCENE_REF:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sun/javafx/css/CssError;->SCENE_REF:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Scene;

    :goto_1
    move-object v1, v2

    .line 59
    .local v1, "oldScene":Ljavafx/scene/Scene;
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_1

    .line 60
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/sun/javafx/css/CssError;->SCENE_REF:Ljava/lang/ref/Reference;

    .line 62
    .line 65
    .end local v1    # "oldScene":Ljavafx/scene/Scene;
    :cond_1
    :goto_2
    goto :goto_0

    .line 58
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    :cond_3
    const/4 v2, 0x0

    sput-object v2, Lcom/sun/javafx/css/CssError;->SCENE_REF:Ljava/lang/ref/Reference;

    goto :goto_2
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError;
    return-object v0
.end method

.method public getScene()Ljavafx/scene/Scene;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError;->sceneRef:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError;->sceneRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Scene;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/CssError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSS Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/CssError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError;
    return-object v0
.end method
