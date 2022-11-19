package com.example.restaurant.db;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

abstract public class MemoryDBRepositoryAbstract<T extends MemoryDBEntity> implements MemoryDBRepositoryIfs<T> {

    private final List<T> db = new ArrayList<>();

    private int index=0;

    @Override
    public Optional<T> findById(int index) {

       return db.stream().filter(i->i.getIndex()==index).findFirst();
    }

    @Override
    public T save(T entity) {

        //db에 이미 데이터가 있는 경우
        //dbd에 데이터가 없는 경우

        Optional<T> optionalEntity = db.stream().filter(i -> i.getIndex() == entity.getIndex()).findFirst();

        if(optionalEntity.isPresent()){

            int preIndex = optionalEntity.get().getIndex();
            entity.setIndex(preIndex);
            deleteById(preIndex);

        }else {

            index++;
            entity.setIndex(index);
        }
        db.add(entity);
        return entity;

    }

    @Override
    public void deleteById(int index) {

        Optional<T> optionalEntity = db.stream().filter(i -> i.getIndex() == index).findFirst();

       if(optionalEntity.isPresent()){

           db.remove(optionalEntity.get());
       }

    }

    @Override
    public List<T> listAll() {
        return db;
    }
}
