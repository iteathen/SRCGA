.class public interface abstract Lcom/sun/javafx/fxml/LoadListener;
.super Ljava/lang/Object;
.source "LoadListener.java"


# virtual methods
.method public abstract beginCopyElement()V
.end method

.method public abstract beginDefineElement()V
.end method

.method public abstract beginIncludeElement()V
.end method

.method public abstract beginInstanceDeclarationElement(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract beginPropertyElement(Ljava/lang/String;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract beginReferenceElement()V
.end method

.method public abstract beginRootElement()V
.end method

.method public abstract beginScriptElement()V
.end method

.method public abstract beginUnknownStaticPropertyElement(Ljava/lang/String;)V
.end method

.method public abstract beginUnknownTypeElement(Ljava/lang/String;)V
.end method

.method public abstract endElement(Ljava/lang/Object;)V
.end method

.method public abstract readComment(Ljava/lang/String;)V
.end method

.method public abstract readEventHandlerAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract readImportProcessingInstruction(Ljava/lang/String;)V
.end method

.method public abstract readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract readLanguageProcessingInstruction(Ljava/lang/String;)V
.end method

.method public abstract readPropertyAttribute(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readUnknownStaticPropertyAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method
