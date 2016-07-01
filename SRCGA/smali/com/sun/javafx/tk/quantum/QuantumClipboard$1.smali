.class Lcom/sun/javafx/tk/quantum/QuantumClipboard$1;
.super Ljava/io/ObjectInputStream;
.source "QuantumClipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/QuantumClipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/QuantumClipboard;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumClipboard;Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v2, p2

    .local v2, "x0":Ljava/io/InputStream;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard$1;->this$0:Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard$1;
    move-object v1, p1

    .local v1, "desc":Ljava/io/ObjectStreamClass;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 317
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 316
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard$1;
    return-object v0
.end method
