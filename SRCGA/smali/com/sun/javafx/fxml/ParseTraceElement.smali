.class public Lcom/sun/javafx/fxml/ParseTraceElement;
.super Ljava/lang/Object;
.source "ParseTraceElement.java"


# instance fields
.field private lineNumber:I

.field private location:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;I)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move v2, p2

    .local v2, "lineNumber":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/fxml/ParseTraceElement;->location:Ljava/net/URL;

    .line 43
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/fxml/ParseTraceElement;->lineNumber:I

    .line 44
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/fxml/ParseTraceElement;->lineNumber:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    return v0
.end method

.method public getLocation()Ljava/net/URL;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/ParseTraceElement;->location:Ljava/net/URL;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/ParseTraceElement;->location:Ljava/net/URL;

    if-nez v2, :cond_0

    const-string v2, "?"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/fxml/ParseTraceElement;->lineNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/ParseTraceElement;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/ParseTraceElement;->location:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
