.class public Ljavafx/scene/input/InputMethodTextRun;
.super Ljava/lang/Object;
.source "InputMethodTextRun.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final highlight:Ljavafx/scene/input/InputMethodHighlight;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/input/InputMethodHighlight;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "text"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/input/InputMethodHighlight;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "highlight"
        .end annotation
    .end param

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodTextRun;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "highlight":Ljavafx/scene/input/InputMethodHighlight;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/input/InputMethodTextRun;->text:Ljava/lang/String;

    .line 51
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/input/InputMethodTextRun;->highlight:Ljavafx/scene/input/InputMethodHighlight;

    .line 52
    return-void
.end method


# virtual methods
.method public final getHighlight()Ljavafx/scene/input/InputMethodHighlight;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodTextRun;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/InputMethodTextRun;->highlight:Ljavafx/scene/input/InputMethodHighlight;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/InputMethodTextRun;
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodTextRun;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/InputMethodTextRun;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/InputMethodTextRun;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/InputMethodTextRun;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputMethodTextRun text ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/InputMethodTextRun;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], highlight ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 88
    invoke-virtual {v2}, Ljavafx/scene/input/InputMethodTextRun;->getHighlight()Ljavafx/scene/input/InputMethodHighlight;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/InputMethodTextRun;
    return-object v0
.end method
