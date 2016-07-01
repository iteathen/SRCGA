.class public interface abstract Ljavax/script/Compilable;
.super Ljava/lang/Object;
.source "Compilable.java"


# virtual methods
.method public abstract compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract compile(Ljava/lang/String;)Ljavax/script/CompiledScript;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method
